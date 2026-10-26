@echo off
setlocal enabledelayedexpansion

set SDK=C:\Users\HP\AppData\Local\Android\Sdk
set BUILD_TOOLS=%SDK%\build-tools\34.0.0
set ANDROID_JAR=%SDK%\platforms\android-34\android.jar
set JAVA_HOME=C:\Program Files\Java\jdk-17
set JAVAC="%JAVA_HOME%\bin\javac.exe"
set JAR="%JAVA_HOME%\bin\jar.exe"
set KEYSTORE=d:\desktop3\debug.keystore
set APP_DIR=d:\desktop3\etaka-app

cd /d "%APP_DIR%"

echo [*] Cleaning previous build artifacts...
if exist build\res.zip del build\res.zip
if exist build\unaligned.apk del build\unaligned.apk
if exist build\classes.dex del build\classes.dex
if exist build\etaka.apk del build\etaka.apk
if exist build\obj rmdir /s /q build\obj
mkdir build\obj
mkdir build\dex

echo [*] Step 1: Compiling resources with aapt2...
"%BUILD_TOOLS%\aapt2.exe" compile --dir res -o build\res.zip
if %ERRORLEVEL% neq 0 (
    echo [ERROR] aapt2 compile failed!
    exit /b 1
)

echo [*] Step 2: Linking resources and generating R.java + unaligned.apk...
"%BUILD_TOOLS%\aapt2.exe" link -I "%ANDROID_JAR%" --manifest AndroidManifest.xml -A assets -o build\unaligned.apk build\res.zip --java src
if %ERRORLEVEL% neq 0 (
    echo [ERROR] aapt2 link failed!
    exit /b 1
)

echo [*] Step 3: Compiling Java sources with javac...
%JAVAC% -source 17 -target 17 -cp "%ANDROID_JAR%" -d build\obj src\com\etaka\wallet\*.java
if %ERRORLEVEL% neq 0 (
    echo [ERROR] javac compilation failed!
    exit /b 1
)

echo [*] Step 4: Converting classes to Dalvik executable (D8)...
call "%BUILD_TOOLS%\d8.bat" --output build\dex build\obj\com\etaka\wallet\*.class
if %ERRORLEVEL% neq 0 (
    echo [ERROR] D8 dex conversion failed!
    exit /b 1
)

echo [*] Step 5: Adding classes.dex to APK...
cd build\dex
%JAR% uf ..\unaligned.apk classes.dex
cd /d "%APP_DIR%"
if %ERRORLEVEL% neq 0 (
    echo [ERROR] Failed to add classes.dex into APK!
    exit /b 1
)

echo [*] Step 6: Aligning APK with zipalign...
"%BUILD_TOOLS%\zipalign.exe" -f -v 4 build\unaligned.apk build\etaka.apk
if %ERRORLEVEL% neq 0 (
    echo [ERROR] zipalign failed!
    exit /b 1
)

echo [*] Step 7: Signing APK with apksigner...
call "%BUILD_TOOLS%\apksigner.bat" sign --ks "%KEYSTORE%" --ks-pass pass:android --key-pass pass:android build\etaka.apk
if %ERRORLEVEL% neq 0 (
    echo [ERROR] apksigner failed!
    exit /b 1
)

echo [SUCCESS] eTaka Android APK built and signed successfully: build\etaka.apk
