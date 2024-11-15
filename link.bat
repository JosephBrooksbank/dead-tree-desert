@echo off
:: Change the working directory to the directory where the script is located
cd /d "%~dp0"

:: Get the current directory
set CURRENT_DIR=%cd%
set FILE_NAME=[entity=dead-tree-desert].zip

:: Factorio save location for the current user
set FACTORIO_SAVE_DIR=%APPDATA%\Factorio\saves

:: Full path to the target and link
set TARGET=%CURRENT_DIR%\%FILE_NAME%
set LINK=%FACTORIO_SAVE_DIR%\%FILE_NAME%


:: Check if the symbolic link already exists and remove it
if exist "%LINK%" (
    echo The symbolic link or file already exists. Deleting it...
    del "%LINK%"
)

:: Create the symbolic link
echo Creating symbolic link from %TARGET% to %LINK%
mklink "%LINK%" "%TARGET%"

pause
