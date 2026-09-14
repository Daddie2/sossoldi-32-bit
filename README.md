# Sossoldi 32-bit

> 🍴 **This is an unofficial fork of [RIP-Comm/sossoldi](https://github.com/RIP-Comm/sossoldi)**, with the specific goal of getting the app to build and run on old 32-bit (armeabi-v7a) Android devices, such as tablets running Android 7.x (API 24) that modern versions of Flutter/Android Gradle Plugin no longer support out of the box.

All credit for the project and the original code goes to the [RIP-Comm](https://github.com/RIP-Comm) team. This fork is not affiliated with or endorsed by them: it is maintained for personal use by [@daddie2](https://github.com/daddie2) and shared in case it helps others with the same problem (old 32-bit Android tablets).

## Why this fork exists

The original project, with the recent versions of Flutter/Kotlin/AGP it uses, no longer builds directly for 32-bit Android 7 devices without some adjustments:

- default `minSdkVersion` too high for API 24;
- `font_awesome_flutter` in a version incompatible with recent Flutter (`IconData` has become a `final` class);
- CSV save path relying on the Storage Access Framework, which is often broken on Android ≤29 / unofficial ROMs;
- the need to explicitly force `--target-platform android-arm` to get a 32-bit APK.

This fork includes the necessary patches and scripts to apply them automatically.

## What the scripts contain

- **`patch_sossoldi.ps1`** — idempotently applies the patches listed above to the source code.
- **`update_sossoldi.bat`** — orchestrator: `git pull`, applies the patches, `flutter pub get`, regenerates the code (`build_runner`), builds the 32-bit APK, backs up data from the tablet (`adb backup`), installs the new APK (`adb install`), and finally syncs (commit + push) the changes to this repository.

## Download

If you don't want to build the APK yourself, check the [Releases](../../releases) section of this repository: when available, you'll find the latest APK there, ready for sideloading on 32-bit Android 7+ tablets.

> ⚠️ The APK is signed with a personal keystore, not the official Sossoldi one: if you already have the original app installed (Play Store/F-Droid/official App Store), this version must be installed as a separate app, or you'll need to uninstall the original one first, since the different signatures prevent a direct update.

## Prerequisites (to build from source)

- [Flutter SDK](https://docs.flutter.dev/get-started/install/windows) installed and in your `PATH`.
- Android Studio with Android SDK, Platform Tools, and NDK installed.
- **A dedicated JDK 17** (e.g. [Eclipse Temurin 17](https://adoptium.net/temurin/releases/?version=17)):
  ```
  flutter config --jdk-dir="C:\Path\to\jdk-17.x.x-hotspot"
  ```
- A personal Android keystore for signing the release build (see below).
- `adb` in your `PATH` and USB debugging enabled on the tablet, for the automatic backup/install steps.

## How to use it

1. Clone this repository:
   ```
   git clone https://github.com/daddie2/sossoldi-32-bit.git
   ```
2. **Create your own keystore** (one-time setup) and the corresponding `android/key.properties` — **not included in this repository and should never be committed**:
   ```
   keytool -genkey -v -keystore android\app\sossoldi-release-key.jks -keyalg RSA -keysize 2048 -validity 10000 -alias sossoldi
   ```
   then create `android/key.properties` with:
   ```
   storePassword=<your password>
   keyPassword=<your password>
   keyAlias=sossoldi
   storeFile=sossoldi-release-key.jks
   ```
3. Run `update_sossoldi.bat` from the project folder. The final APK will be in `build\app\outputs\flutter-apk\app-default-release.apk`.

## Security

- `android/key.properties` and the `.jks`/`.keystore` files contain the credentials used to sign the app: **they must never be committed** (they are excluded via `.gitignore`).
- The APKs published in the Releases are signed but **contain no personal data**: they are binaries built solely from this repository's public source code, with no API keys or credentials embedded.

## License

<<<<<<< HEAD
Like the original project, this fork is distributed under the MIT license (see `LICENSE`).
=======
Like the original project, this fork is distributed under the MIT license (see `LICENSE`).
>>>>>>> c9cf284769d5a11abbb2f9c13004090b7321fabc
