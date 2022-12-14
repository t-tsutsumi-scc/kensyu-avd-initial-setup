@echo off

(
echo [user]
echo 	name = %USERNAME:TG¤C[U=TG Kensyu User %
echo 	email = %USERNAME:TG¤C[U=tg-kensyu-%@scckk.onmicrosoft.com
echo.
echo [core]
echo   autoCRLF = input
echo   quotepath = false
echo.
echo [difftool "sourcetree"]
echo 	cmd = 'C:/Program Files/Perforce/p4merge.exe' \"$LOCAL\" \"$REMOTE\"
echo [mergetool "sourcetree"]
echo 	cmd = 'C:/Program Files/Perforce/p4merge.exe' \"$BASE\" \"$LOCAL\" \"$REMOTE\" \"$MERGED\"
echo 	trustExitCode = true
echo 	keepBackup = false
) > %USERPROFILE%\.gitconfig

reg IMPORT kensyu-avd-initial-setup.reg
xcopy /E /Y data %USERPROFILE%

winget install -h --accept-package-agreements --accept-source-agreements -e --id Microsoft.WindowsTerminal
winget install -h --accept-package-agreements --accept-source-agreements -e --id Canonical.Ubuntu.2204

REM "C:\Windows\SysWOW64\OneDriveSetup.exe" /uninstall
