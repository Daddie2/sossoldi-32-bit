@echo off
setlocal enabledelayedexpansion

echo ===============================================
echo   Sossoldi - aggiornamento per tablet Android 7
echo ===============================================
echo.

if not exist pubspec.yaml (
    echo ERRORE: lancia questo file dalla cartella radice del progetto Sossoldi
    echo         ^(quella dove si trova pubspec.yaml^).
    pause
    exit /b 1
)

set PUSHED=0

if exist .git (
    echo [1/10] Aggiorno il codice da GitHub ^(git pull^)...
    git pull
    if errorlevel 1 (
        echo ERRORE durante git pull. Controlla eventuali conflitti e riprova.
        pause
        exit /b 1
    )
) else (
    echo [1/10] Nessuna cartella .git trovata, salto git pull.
)
echo.

echo [2/10] Applico le patch necessarie...
powershell -NoProfile -ExecutionPolicy Bypass -File patch_sossoldi.ps1
if errorlevel 1 (
    echo ERRORE durante l'applicazione delle patch.
    pause
    exit /b 1
)
echo.

echo [3/10] Scarico le dipendenze Flutter...
call flutter pub get
if errorlevel 1 (
    echo ERRORE durante flutter pub get.
    pause
    exit /b 1
)
echo.

echo [4/10] Genero il codice ^(provider Riverpod, freezed, json_serializable^)...
call dart run build_runner build --delete-conflicting-outputs
if errorlevel 1 (
    echo ERRORE durante la generazione del codice.
    pause
    exit /b 1
)
echo.

echo [5/10] Compilo l'APK ^(32-bit, per il tablet, flavor default^)...
call flutter build apk --release --target-platform android-arm --flavor default --android-skip-build-dependency-validation
if errorlevel 1 (
    echo ERRORE durante la build.
    pause
    exit /b 1
)
echo.

echo [6/10] Verifico se il tablet e' collegato...
set DO_INSTALL=1
adb devices | findstr /r /c:"device$" >nul
if errorlevel 1 (
    echo Nessun dispositivo Android rilevato via adb.
    set /p INSTALL_CHOICE="Vuoi comunque provare backup e installazione sul tablet? (s/N): "
    if /i not "!INSTALL_CHOICE!"=="s" (
        echo Salto backup e installazione: procedo solo con la sincronizzazione su GitHub.
        set DO_INSTALL=0
    )
)
echo.

if "%DO_INSTALL%"=="1" (
    echo [7/10] Backup dei dati dal tablet...
    echo       ^(sul tablet potrebbe apparire una richiesta di conferma: sblocca e conferma^)
    adb backup -f sossoldi_backup.ab com.ripster.sossoldi
    if errorlevel 1 (
        echo ATTENZIONE: il backup non e' andato a buon fine. Continuo comunque con l'installazione,
        echo             ma senza una rete di sicurezza per questo aggiornamento.
    ) else (
        echo Backup salvato in sossoldi_backup.ab ^(nella cartella del progetto^)
    )
    echo.

    echo [8/10] Installo sul tablet via adb...
    echo       ^(assicurati che il tablet sia collegato con debug USB attivo^)
    adb install -r build\app\outputs\flutter-apk\app-default-release.apk
    if errorlevel 1 (
        echo ATTENZIONE: installazione non riuscita. Il tablet e' collegato e sbloccato?
        echo             L'APK resta comunque disponibile in build\app\outputs\flutter-apk\
        echo             Procedo con la sincronizzazione su GitHub.
    )
) else (
    echo [7-8/10] Backup e installazione saltati ^(nessun tablet collegato^).
)
echo.

echo [9/10] Sincronizzo le modifiche con il tuo repository GitHub...
if not exist .git (
    echo Nessuna cartella .git trovata, salto la sincronizzazione.
) else (
    git add -A
    git diff --cached --quiet
    if not errorlevel 1 (
        echo Nessuna modifica da sincronizzare.
    ) else (
        git commit -m "Aggiornamento automatico del %date% alle %time%"
        if errorlevel 1 (
            echo ATTENZIONE: commit non riuscito, salto il push.
        ) else (
            git push origin main
            if errorlevel 1 (
                echo ATTENZIONE: push non riuscito. Controlla la connessione o l'autenticazione GitHub
                echo             ^(potrebbe servire rifare 'gh auth login' o generare un nuovo token^).
            ) else (
                echo Modifiche pubblicate su GitHub.
                set PUSHED=1
            )
        )
    )
)
echo.

echo [10/10] Pubblico la release con l'APK su GitHub...
if not "%PUSHED%"=="1" (
    echo Nessuna nuova modifica pubblicata, salto la creazione della release.
) else (
    if not defined GITHUB_TOKEN (
        echo ATTENZIONE: variabile d'ambiente GITHUB_TOKEN non impostata, salto la creazione della release.
        echo             Impostala una tantum con: setx GITHUB_TOKEN "il-tuo-personal-access-token"
        echo             ^(poi riapri questo terminale/riavvia il bat^)
    ) else (
        powershell -NoProfile -ExecutionPolicy Bypass -File create_github_release.ps1
        if errorlevel 1 (
            echo ATTENZIONE: creazione della release fallita. Controlla il token e il remote ^(git remote -v^).
        )
    )
)

echo.
echo ===============================================
if "%DO_INSTALL%"=="1" (
    echo   Fatto! App aggiornata sul tablet.
) else (
    echo   Fatto! APK compilato ^(nessun tablet collegato, installazione saltata^).
)
echo ===============================================
pause