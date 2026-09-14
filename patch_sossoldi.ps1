# patch_sossoldi.ps1
# Applies the patches needed to make CSV export work on Android 7.1 / unofficial LineageOS.
# Run from the root folder of the Sossoldi project (where pubspec.yaml is located).
# This script is IDEMPOTENT: if a patch is already present, it is skipped instead of duplicated.
# If the source code pulled from GitHub has changed the structure of csv_file_picker.dart,
# the script warns instead of breaking the file.

$ErrorActionPreference = "Stop"

$manifestPath = "android\app\src\main\AndroidManifest.xml"
$csvPath      = "lib\services\csv\csv_file_picker.dart"

if (-not (Test-Path $manifestPath)) {
    Write-Host "ERROR: cannot find $manifestPath. Run this script from the root folder of the Sossoldi project." -ForegroundColor Red
    exit 1
}
if (-not (Test-Path $csvPath)) {
    Write-Host "ERROR: cannot find $csvPath. Run this script from the root folder of the Sossoldi project." -ForegroundColor Red
    exit 1
}

# ---------- 1. AndroidManifest.xml ----------
Write-Host "== AndroidManifest.xml ==" -ForegroundColor Cyan
$manifest = Get-Content $manifestPath -Raw

if ($manifest -notmatch "WRITE_EXTERNAL_STORAGE") {
    Write-Host "Adding WRITE_EXTERNAL_STORAGE..."
    $manifest = $manifest -replace `
        '(<uses-permission android:name="android\.permission\.READ_EXTERNAL_STORAGE"[^/]*/>)', `
        "`$1`r`n    <uses-permission android:name=`"android.permission.WRITE_EXTERNAL_STORAGE`" android:maxSdkVersion=`"29`"/>"
} else {
    Write-Host "WRITE_EXTERNAL_STORAGE already present, skipping."
}

if ($manifest -match 'android:allowBackup="false"') {
    Write-Host "Setting android:allowBackup to true..."
    $manifest = $manifest -replace 'android:allowBackup="false"', 'android:allowBackup="true"'
} else {
    Write-Host "android:allowBackup already true (or not in the expected form), skipping."
}

if ($manifest -notmatch "requestLegacyExternalStorage") {
    Write-Host "Adding requestLegacyExternalStorage..."
    $manifest = $manifest -replace `
        '(android:allowBackup="[^"]*")', `
        "`$1`r`n        android:requestLegacyExternalStorage=`"true`""
} else {
    Write-Host "requestLegacyExternalStorage already present, skipping."
}

Set-Content -Path $manifestPath -Value $manifest -NoNewline
Write-Host "AndroidManifest.xml OK." -ForegroundColor Green
Write-Host ""

# ---------- 2. csv_file_picker.dart ----------
Write-Host "== csv_file_picker.dart ==" -ForegroundColor Cyan
$csv = Get-Content $csvPath -Raw

if ($csv -match [regex]::Escape("Always asks for the folder")) {
    Write-Host "csv_file_picker.dart already patched, skipping."
} else {
    $newFunction = @'
  // Share exported CSV file
  // Always asks for the folder via the picker (SAF), even on Android
  // <=29 / older ROMs, instead of automatically writing to Download.
  static Future<void> saveCSVFile(String csv, BuildContext context) async {
    try {
      String? selectedDirectory = await FilePicker.platform.getDirectoryPath();
      if (selectedDirectory == null) {
        // User canceled the picker
        return;
      }

      final String timestamp =
          DateTime.now().millisecondsSinceEpoch.toString();
      final String filePath =
          join(selectedDirectory, 'sossoldi_export_$timestamp.csv');

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
        Write-Host "WARNING: could not find the saveCSVFile function in the expected form." -ForegroundColor Yellow
        Write-Host "The file has probably changed with the latest update from GitHub." -ForegroundColor Yellow
        Write-Host "Patch NOT applied: edit csv_file_picker.dart manually this time." -ForegroundColor Yellow
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
    Write-Host "WARNING: cannot find $pubspecPath, skipping this patch." -ForegroundColor Yellow
} else {
    $pubspec = Get-Content $pubspecPath -Raw

    if ($pubspec -match 'font_awesome_flutter:\s*\^11\.') {
        Write-Host "font_awesome_flutter already on ^11.x, skipping."
    } elseif ($pubspec -match 'font_awesome_flutter:\s*\^\d+\.\d+\.\d+') {
        Write-Host "Updating font_awesome_flutter to ^11.0.0..."
        $pubspec = $pubspec -replace 'font_awesome_flutter:\s*\^\d+\.\d+\.\d+', 'font_awesome_flutter: ^11.0.0'
        Set-Content -Path $pubspecPath -Value $pubspec -NoNewline
        Write-Host "pubspec.yaml OK." -ForegroundColor Green
    } else {
        Write-Host "WARNING: could not find the font_awesome_flutter line in the expected form, skipping." -ForegroundColor Yellow
    }
}
Write-Host ""

# ---------- 4. settings_page.dart (removes an incorrect FaIconData wrapper, if present) ----------
Write-Host "== settings_page.dart ==" -ForegroundColor Cyan
$settingsPath = "lib\pages\settings\settings_page.dart"

if (-not (Test-Path $settingsPath)) {
    Write-Host "WARNING: cannot find $settingsPath, skipping this patch." -ForegroundColor Yellow
} else {
    $settings = Get-Content $settingsPath -Raw

    $iconNames = @("github", "linkedin", "youtube", "discord")
    $changed = $false
    foreach ($icon in $iconNames) {
        # Removes the double wrapping if a previous (incorrect) run of this script applied it.
        # FontAwesomeIcons.$icon is already of type FaIconData in font_awesome_flutter 11.x,
        # so it should not be wrapped again.
        $old = "FaIcon(FaIconData(FontAwesomeIcons.$icon))"
        $new = "FaIcon(FontAwesomeIcons.$icon)"
        if ($settings -match [regex]::Escape($old)) {
            $settings = $settings.Replace($old, $new)
            $changed = $true
        }
    }
    if ($changed) {
        Set-Content -Path $settingsPath -Value $settings -NoNewline
        Write-Host "settings_page.dart fixed (removed incorrect wrapping)." -ForegroundColor Green
    } else {
        Write-Host "settings_page.dart already in the correct form, skipping."
    }
}
Write-Host ""

# ---------- 5. collaborators_page.dart ----------
Write-Host "== collaborators_page.dart ==" -ForegroundColor Cyan
$collabPath = "lib\pages\settings\infos\collaborators_page.dart"

if (-not (Test-Path $collabPath)) {
    Write-Host "WARNING: cannot find $collabPath, skipping this patch." -ForegroundColor Yellow
} else {
    $collab = Get-Content $collabPath -Raw
    $changed = $false

    # 5a. Return type of _platformIcon: must be FaIconData, not IconData,
    #     because FontAwesomeIcons.xxx in 11.x returns FaIconData.
    #     The (?<!Fa) lookbehind avoids matching "IconData" inside "FaIconData"
    #     and doubling the prefix if the file is already correct.
    $sigPattern = "(?<!Fa)IconData _platformIcon\(String url\) \{"
    if ($collab -match $sigPattern) {
        $collab = [regex]::Replace($collab, $sigPattern, "FaIconData _platformIcon(String url) {", 1)
        $changed = $true
    }

    # 5b. Removes the incorrect FaIconData(...) wrapping if a previous run applied it.
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
        Write-Host "collaborators_page.dart already in the correct form, skipping."
    }
}

Write-Host ""
Write-Host "Patches completed." -ForegroundColor Cyan