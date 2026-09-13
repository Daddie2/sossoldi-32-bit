# Sossoldi 32-bit

> 🍴 **Questo è un fork non ufficiale di [RIP-Comm/sossoldi](https://github.com/RIP-Comm/sossoldi)**, con lo scopo specifico di far compilare e girare l'app su dispositivi Android datati a **32 bit (armeabi-v7a)**, come tablet con Android 7.x (API 24) che le versioni moderne di Flutter/Android Gradle Plugin non supportano più out-of-the-box.

Tutto il merito del progetto e del codice originale va al team [RIP-Comm](https://github.com/RIP-Comm). Questo fork non è affiliato né sponsorizzato da loro: è mantenuto per uso personale da [@daddie2](https://github.com/daddie2) e condiviso nel caso possa servire ad altri con lo stesso problema (vecchi tablet Android a 32 bit).

## Perché questo fork esiste

Il progetto originale, con le versioni recenti di Flutter/Kotlin/AGP che usa, non compila più direttamente per dispositivi Android 7 a 32 bit senza alcuni aggiustamenti:

- `minSdkVersion` di default troppo alto per API 24;
- `font_awesome_flutter` in una versione incompatibile con Flutter recente (`IconData` è diventata una classe `final`);
- percorso di salvataggio CSV che si affida al Storage Access Framework, spesso rotto su Android ≤29 / ROM non ufficiali;
- necessità di forzare esplicitamente `--target-platform android-arm` per ottenere un APK a 32 bit.

Questo fork include le patch necessarie e gli script per applicarle automaticamente.

## Cosa contengono gli script

- **`patch_sossoldi.ps1`** — applica in modo idempotente le patch sopra elencate al codice sorgente.
- **`update_sossoldi.bat`** — orchestratore: `git pull`, applica le patch, `flutter pub get`, rigenera il codice (`build_runner`), compila l'APK a 32 bit, fa un backup dei dati dal tablet (`adb backup`), installa il nuovo APK (`adb install`) e infine sincronizza (commit + push) le modifiche su questo repository.

## Download

Se non vuoi compilare tu stesso l'APK, controlla la sezione [Releases](../../releases) di questo repository: quando disponibile, troverai lì l'ultimo APK pronto per il sideload su tablet Android 7+ a 32 bit.

> ⚠️ L'APK è firmato con un keystore personale, non con quello ufficiale di Sossoldi: se hai già l'app originale installata (Play Store/F-Droid/App Store ufficiale), questa versione va installata come app separata o dovrai disinstallare quella originale prima, perché le firme diverse impediscono l'aggiornamento diretto.

## Prerequisiti (per compilare da sorgente)

- [Flutter SDK](https://docs.flutter.dev/get-started/install/windows) installato e nel `PATH`.
- Android Studio con Android SDK, Platform Tools e NDK installati.
- **Un JDK 17** dedicato (es. [Eclipse Temurin 17](https://adoptium.net/temurin/releases/?version=17)):
  ```
  flutter config --jdk-dir="C:\Percorso\jdk-17.x.x-hotspot"
  ```
- Un keystore Android personale per la firma della release (vedi sotto).
- `adb` nel `PATH` e debug USB attivo sul tablet, per i passaggi di backup/installazione automatica.

## Come si usa

1. Clona questo repository:
   ```
   git clone https://github.com/daddie2/sossoldi-32-bit.git
   ```
2. **Crea un tuo keystore** (una tantum) e il relativo `android/key.properties` — **non è incluso in questo repository e non va mai committato**:
   ```
   keytool -genkey -v -keystore android\app\sossoldi-release-key.jks -keyalg RSA -keysize 2048 -validity 10000 -alias sossoldi
   ```
   poi crea `android/key.properties` con:
   ```
   storePassword=<tua password>
   keyPassword=<tua password>
   keyAlias=sossoldi
   storeFile=sossoldi-release-key.jks
   ```
3. Lancia `update_sossoldi.bat` dalla cartella del progetto. L'APK finale sarà in `build\app\outputs\flutter-apk\app-default-release.apk`.

## Sicurezza

- `android/key.properties` e i file `.jks`/`.keystore` contengono le credenziali per firmare l'app: **non vanno mai committati** (sono esclusi via `.gitignore`).
- Gli APK pubblicati nelle Release sono firmati ma **non contengono dati personali**: sono binari compilati dal solo codice sorgente pubblico di questo repository, senza chiavi API o credenziali incorporate.

## Licenza

Come il progetto originale, questo fork è distribuito sotto licenza MIT (vedi `LICENSE`).
