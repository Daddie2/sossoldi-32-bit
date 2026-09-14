@echo off
setlocal enabledelayedexpansion

echo ===============================================
echo   Sossoldi - update for Android 7 tablet
echo ===============================================
echo.

if not exist pubspec.yaml (
    echo ERROR: run this file from the root folder of the Sossoldi project
    echo        ^(the one containing pubspec.yaml^).
    pause
    exit /b 1
)

set PUSHED=0

if exist .git (
    echo [1/10] Checking for updates from the original project ^(upstream RIP-Comm/sossoldi^)...

    git remote get-url upstream >nul 2>&1
    if errorlevel 1 (
        echo Adding the 'upstream' remote -^> https://github.com/RIP-Comm/sossoldi.git
        git remote add upstream https://github.com/RIP-Comm/sossoldi.git
    )

    echo Fetching the latest refs from upstream...
    git fetch upstream
    if errorlevel 1 (
        echo ERROR while running git fetch upstream. Check your connection and try again.
        pause
        exit /b 1
    )

    set "MERGE_OUTPUT="
    for /f "delims=" %%O in ('git merge upstream/main --no-edit 2^>^&1') do (
        echo %%O
        set "MERGE_OUTPUT=!MERGE_OUTPUT! %%O"
    )
    if errorlevel 1 (
        echo.
        echo ===============================================
        echo   CONFLICT while merging the updates
        echo ===============================================
        echo.
        echo The original project has changed some files that you also
        echo changed ^(most likely through the patches^), so Git could not
        echo merge the two versions automatically.
        echo.
        echo Files in conflict:
        git diff --name-only --diff-filter=U
        echo.
        echo How to fix it, step by step:
        echo   1. Open each file listed above in a text editor.
        echo   2. Look for blocks marked with these separators:
        echo        ^<^<^<^<^<^<^< HEAD                  ^(your version^)
        echo        ^=^=^=^=^=^=^=
        echo        ^>^>^>^>^>^>^> upstream/main         ^(the original version^)
        echo   3. Decide which part to keep ^(or merge both by hand^),
        echo      then delete the markers and save the file.
        echo   4. Once ALL conflicted files are fixed, run:
        echo        git add -A
        echo        git commit -m "Merge upstream, resolved conflicts"
        echo   5. Re-run this script ^(update_sossoldi.bat^) to continue
        echo      with patching, building and installing.
        echo.
        echo Alternatively, to cancel the merge and go back:
        echo        git merge --abort
        echo.
        pause
        exit /b 1
    )

    echo !MERGE_OUTPUT! | findstr /i /c:"Already up to date" /c:"up-to-date" >nul
    if not errorlevel 1 (
        echo.
        echo No updates found on the original RIP-Comm/sossoldi project.
        set /p CONTINUE_CHOICE="Do you want to continue anyway with build/install/release? (Y/n): "
        if /i "!CONTINUE_CHOICE!"=="n" (
            echo Operation cancelled by the user.
            pause
            exit /b 0
        )
    ) else (
        echo.
        echo Updates found in the original project: merged into your local fork.
    )
) else (
    echo [1/10] No .git folder found, skipping update check.
)
echo.

echo [2/10] Applying the required patches...
powershell -NoProfile -ExecutionPolicy Bypass -File patch_sossoldi.ps1
if errorlevel 1 (
    echo ERROR while applying the patches.
    pause
    exit /b 1
)
echo.

echo [3/10] Fetching Flutter dependencies...
call flutter pub get
if errorlevel 1 (
    echo ERROR while running flutter pub get.
    pause
    exit /b 1
)
echo.

echo [4/10] Generating code ^(Riverpod providers, freezed, json_serializable^)...
call dart run build_runner build --delete-conflicting-outputs
if errorlevel 1 (
    echo ERROR while generating code.
    pause
    exit /b 1
)
echo.

echo [5/10] Building the APK ^(32-bit, for the tablet, default flavor^)...
call flutter build apk --release --target-platform android-arm --flavor default --android-skip-build-dependency-validation
if errorlevel 1 (
    echo ERROR during the build.
    pause
    exit /b 1
)
echo.

echo [6/10] Checking whether the tablet is connected...
set DO_INSTALL=1
adb devices | findstr /r /c:"device$" >nul
if errorlevel 1 (
    echo No Android device detected via adb.
    set /p INSTALL_CHOICE="Do you want to try backup and installation on the tablet anyway? (y/N): "
    if /i not "!INSTALL_CHOICE!"=="y" (
        echo Skipping backup and installation: proceeding only with GitHub sync.
        set DO_INSTALL=0
    )
)
echo.

if "%DO_INSTALL%"=="1" (
    echo [7/10] Backing up data from the tablet...
    echo       ^(a confirmation prompt may appear on the tablet: unlock it and confirm^)
    adb backup -f sossoldi_backup.ab com.ripster.sossoldi
    if errorlevel 1 (
        echo WARNING: the backup did not succeed. Continuing with the installation anyway,
        echo          but without a safety net for this update.
    ) else (
        echo Backup saved to sossoldi_backup.ab ^(in the project folder^)
    )
    echo.

    echo [8/10] Installing on the tablet via adb...
    echo       ^(make sure the tablet is connected with USB debugging enabled^)
    adb install -r build\app\outputs\flutter-apk\app-default-release.apk
    if errorlevel 1 (
        echo WARNING: installation failed. Is the tablet connected and unlocked?
        echo          The APK is still available at build\app\outputs\flutter-apk\
        echo          Proceeding with GitHub sync.
    )
) else (
    echo [7-8/10] Backup and installation skipped ^(no tablet connected^).
)
echo.

echo [9/10] Syncing changes with your GitHub repository...
set /p GITHUB_CHOICE="Do you want to upload the changes to GitHub (commit + push + release)? (Y/n): "
if /i "!GITHUB_CHOICE!"=="n" (
    echo Skipping GitHub sync at the user's request.
) else if not exist .git (
    echo No .git folder found, skipping sync.
) else (
    git add -A
    git diff --cached --quiet
    if not errorlevel 1 (
        echo No changes to sync.
    ) else (
        git commit -m "Automated update on %date% at %time%"
        if errorlevel 1 (
            echo WARNING: commit failed, skipping push.
        ) else (
            git push origin main
            if errorlevel 1 (
                echo WARNING: push failed. Check your connection or GitHub authentication
                echo          ^(you may need to run 'gh auth login' again or generate a new token^).
            ) else (
                echo Changes published to GitHub.
                set PUSHED=1
            )
        )
    )
)
echo.

echo [10/10] Publishing the release with the APK on GitHub...
if /i "!GITHUB_CHOICE!"=="n" (
    echo Skipping release creation ^(you chose not to upload to GitHub^).
) else if not defined GITHUB_TOKEN (
    echo WARNING: the GITHUB_TOKEN environment variable is not set, skipping release creation.
    echo          Set it once with: setx GITHUB_TOKEN "your-personal-access-token"
    echo          ^(then reopen this terminal / restart the bat file^)
) else (
    powershell -NoProfile -ExecutionPolicy Bypass -File create_github_release.ps1
    if errorlevel 1 (
        echo WARNING: release creation failed. Check the token and the remote ^(git remote -v^).
    )
)

echo.
echo ===============================================
if "%DO_INSTALL%"=="1" (
    echo   Done! App updated on the tablet.
) else (
    echo   Done! APK built ^(no tablet connected, installation skipped^).
)
echo ===============================================
pause