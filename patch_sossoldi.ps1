# patch_sossoldi.ps1
# Applica le patch necessarie per far funzionare l'export CSV su Android 7.1 / LineageOS unofficial.
# Lanciare dalla cartella radice del progetto Sossoldi (dove c'e' pubspec.yaml).
# Lo script e' IDEMPOTENTE: se una patch e' gia' presente, la salta senza duplicarla.
# Se il codice sorgente aggiornato da GitHub ha cambiato la struttura del file csv_file_picker.dart,
# lo script avvisa invece di rompere il file.

$ErrorActionPreference = "Stop"

$manifestPath = "android\app\src\main\AndroidManifest.xml"
$csvPath      = "lib\services\csv\csv_file_picker.dart"

if (-not (Test-Path $manifestPath)) {
    Write-Host "ERRORE: non trovo $manifestPath. Lancia questo script dalla cartella radice del progetto Sossoldi." -ForegroundColor Red
    exit 1
}
if (-not (Test-Path $csvPath)) {
    Write-Host "ERRORE: non trovo $csvPath. Lancia questo script dalla cartella radice del progetto Sossoldi." -ForegroundColor Red
    exit 1
}

# ---------- 1. AndroidManifest.xml ----------
Write-Host "== AndroidManifest.xml ==" -ForegroundColor Cyan
$manifest = Get-Content $manifestPath -Raw

if ($manifest -notmatch "WRITE_EXTERNAL_STORAGE") {
    Write-Host "Aggiungo WRITE_EXTERNAL_STORAGE..."
    $manifest = $manifest -replace `
        '(<uses-permission android:name="android\.permission\.READ_EXTERNAL_STORAGE"[^/]*/>)', `
        "`$1`r`n    <uses-permission android:name=`"android.permission.WRITE_EXTERNAL_STORAGE`" android:maxSdkVersion=`"29`"/>"
} else {
    Write-Host "WRITE_EXTERNAL_STORAGE gia' presente, salto."
}

if ($manifest -match 'android:allowBackup="false"') {
    Write-Host "Imposto android:allowBackup su true..."
    $manifest = $manifest -replace 'android:allowBackup="false"', 'android:allowBackup="true"'
} else {
    Write-Host "android:allowBackup gia' true (o non nella forma attesa), salto."
}

if ($manifest -notmatch "requestLegacyExternalStorage") {
    Write-Host "Aggiungo requestLegacyExternalStorage..."
    $manifest = $manifest -replace `
        '(android:allowBackup="[^"]*")', `
        "`$1`r`n        android:requestLegacyExternalStorage=`"true`""
} else {
    Write-Host "requestLegacyExternalStorage gia' presente, salto."
}

Set-Content -Path $manifestPath -Value $manifest -NoNewline
Write-Host "AndroidManifest.xml OK." -ForegroundColor Green
Write-Host ""

# ---------- 2. csv_file_picker.dart ----------
Write-Host "== csv_file_picker.dart ==" -ForegroundColor Cyan
$csv = Get-Content $csvPath -Raw

if ($csv -match [regex]::Escape("Su Android <=29")) {
    Write-Host "csv_file_picker.dart gia' patchato, salto."
} else {
    $newFunction = @'
  // Share exported CSV file
  static Future<void> saveCSVFile(String csv, BuildContext context) async {
    try {
      int sdkInt = 0;
      if (Platform.isAndroid) {
        final androidInfo = await DeviceInfoPlugin().androidInfo;
        sdkInt = androidInfo.version.sdkInt;
      }

      String filePath;

      if (Platform.isAndroid && sdkInt <= 29) {
        // Su Android <=29 (o ROM con SAF/DocumentsUI rotto) scriviamo
        // direttamente su Download, bypassando file_picker.
        bool permissionGranted = await _requestStoragePermission();
        if (!permissionGranted) {
          if (context.mounted) {
            showSnackBar(context, message: 'Storage permission is required');
          }
          return;
        }

        final downloadsDir = Directory('/storage/emulated/0/Download');
        if (!await downloadsDir.exists()) {
          await downloadsDir.create(recursive: true);
        }

        final String timestamp =
            DateTime.now().millisecondsSinceEpoch.toString();
        filePath = join(downloadsDir.path, 'sossoldi_export_$timestamp.csv');
      } else {
        // Android 10+ / altre piattaforme: comportamento originale con SAF
        String? selectedDirectory = await FilePicker.platform.getDirectoryPath();
        if (selectedDirectory == null) {
          // User canceled the picker
          return;
        }

        final String timestamp =
            DateTime.now().millisecondsSinceEpoch.toString();
        filePath = join(selectedDirectory, 'sossoldi_export_$timestamp.csv');
      }

      final file = await File(filePath).writeAsString(csv);

      if (context.mounted) {
        showSnackBar(context, message: 'File saved to: ${file.path}');
      }
    } catch (e) {
      if (context.mounted) {
        String errorMessage =
            'Cannot save the file here, please create or select a folder in Downloads or Documents. Error: ${e.toString()}';

        showSnackBar(context, message: errorMessage);
      }
    }
  }
'@

    $startMarker = [regex]::Escape("  // Share exported CSV file")
    $endMarker   = [regex]::Escape("  // Show loading dialog")
    $pattern     = "(?s)$startMarker.*?(?=$endMarker)"

    if ($csv -notmatch $pattern) {
        Write-Host "ATTENZIONE: non trovo la funzione saveCSVFile nella forma attesa." -ForegroundColor Yellow
        Write-Host "Il file e' probabilmente cambiato con l'ultimo aggiornamento da GitHub." -ForegroundColor Yellow
        Write-Host "Patch NON applicata: modifica csv_file_picker.dart a mano questa volta." -ForegroundColor Yellow
    } else {
        $evaluator = [System.Text.RegularExpressions.MatchEvaluator] { param($m) $newFunction + "`r`n`r`n" }
        $csv = [regex]::Replace($csv, $pattern, $evaluator, 1)
        Set-Content -Path $csvPath -Value $csv -NoNewline
        Write-Host "csv_file_picker.dart OK." -ForegroundColor Green
    }
}

# ---------- 3. pubspec.yaml (font_awesome_flutter) ----------
Write-Host "== pubspec.yaml ==" -ForegroundColor Cyan
$pubspecPath = "pubspec.yaml"

if (-not (Test-Path $pubspecPath)) {
    Write-Host "ATTENZIONE: non trovo $pubspecPath, salto questa patch." -ForegroundColor Yellow
} else {
    $pubspec = Get-Content $pubspecPath -Raw

    if ($pubspec -match 'font_awesome_flutter:\s*\^11\.') {
        Write-Host "font_awesome_flutter gia' su ^11.x, salto."
    } elseif ($pubspec -match 'font_awesome_flutter:\s*\^\d+\.\d+\.\d+') {
        Write-Host "Aggiorno font_awesome_flutter a ^11.0.0..."
        $pubspec = $pubspec -replace 'font_awesome_flutter:\s*\^\d+\.\d+\.\d+', 'font_awesome_flutter: ^11.0.0'
        Set-Content -Path $pubspecPath -Value $pubspec -NoNewline
        Write-Host "pubspec.yaml OK." -ForegroundColor Green
    } else {
        Write-Host "ATTENZIONE: non trovo la riga font_awesome_flutter nella forma attesa, salto." -ForegroundColor Yellow
    }
}
Write-Host ""

# ---------- 4. settings_page.dart (rimuove un avvolgimento FaIconData errato, se presente) ----------
Write-Host "== settings_page.dart ==" -ForegroundColor Cyan
$settingsPath = "lib\pages\settings\settings_page.dart"

if (-not (Test-Path $settingsPath)) {
    Write-Host "ATTENZIONE: non trovo $settingsPath, salto questa patch." -ForegroundColor Yellow
} else {
    $settings = Get-Content $settingsPath -Raw

    $iconNames = @("github", "linkedin", "youtube", "discord")
    $changed = $false
    foreach ($icon in $iconNames) {
        # Rimuove il doppio avvolgimento se un run precedente (errato) dello script l'ha applicato.
        # FontAwesomeIcons.$icon e' gia' di tipo FaIconData in font_awesome_flutter 11.x,
        # quindi non va avvolto di nuovo.
        $old = "FaIcon(FaIconData(FontAwesomeIcons.$icon))"
        $new = "FaIcon(FontAwesomeIcons.$icon)"
        if ($settings -match [regex]::Escape($old)) {
            $settings = $settings.Replace($old, $new)
            $changed = $true
        }
    }
    if ($changed) {
        Set-Content -Path $settingsPath -Value $settings -NoNewline
        Write-Host "settings_page.dart corretto (rimosso avvolgimento errato)." -ForegroundColor Green
    } else {
        Write-Host "settings_page.dart gia' nella forma corretta, salto."
    }
}
Write-Host ""

# ---------- 5. collaborators_page.dart ----------
Write-Host "== collaborators_page.dart ==" -ForegroundColor Cyan
$collabPath = "lib\pages\settings\infos\collaborators_page.dart"

if (-not (Test-Path $collabPath)) {
    Write-Host "ATTENZIONE: non trovo $collabPath, salto questa patch." -ForegroundColor Yellow
} else {
    $collab = Get-Content $collabPath -Raw
    $changed = $false

    # 5a. Tipo di ritorno di _platformIcon: deve essere FaIconData, non IconData,
    #     perche' FontAwesomeIcons.xxx in 11.x restituisce FaIconData.
    #     Il controllo (?<!Fa) evita di ritrovare "IconData" dentro "FaIconData"
    #     e raddoppiare il prefisso se il file e' gia' corretto.
    $sigPattern = "(?<!Fa)IconData _platformIcon\(String url\) \{"
    if ($collab -match $sigPattern) {
        $collab = [regex]::Replace($collab, $sigPattern, "FaIconData _platformIcon(String url) {", 1)
        $changed = $true
    }

    # 5b. Rimuove l'avvolgimento FaIconData(...) errato se un run precedente l'ha applicato.
    $pattern1 = "(?s)child: const FaIcon\(\r?\n(\s*)FaIconData\(FontAwesomeIcons\.github\),"
    if ($collab -match $pattern1) {
        $collab = [regex]::Replace($collab, $pattern1, { param($m) "child: const FaIcon(`r`n$($m.Groups[1].Value)FontAwesomeIcons.github," }, 1)
        $changed = $true
    }

    $pattern2 = "(?s)FaIcon\(\r?\n(\s*)FaIconData\(_platformIcon\(url\)\),"
    if ($collab -match $pattern2) {
        $collab = [regex]::Replace($collab, $pattern2, { param($m) "FaIcon(`r`n$($m.Groups[1].Value)_platformIcon(url)," }, 1)
        $changed = $true
    }

    if ($changed) {
        Set-Content -Path $collabPath -Value $collab -NoNewline
        Write-Host "collaborators_page.dart OK." -ForegroundColor Green
    } else {
        Write-Host "collaborators_page.dart gia' nella forma corretta, salto."
    }
}

Write-Host ""
Write-Host "Patch completate." -ForegroundColor Cyan