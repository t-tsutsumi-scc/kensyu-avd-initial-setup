@echo off

(
echo [user]
echo 	name = %USERNAME:TGŒ¤Cƒ†[ƒU=TG Kensyu User %
echo 	email = %USERNAME:TGŒ¤Cƒ†[ƒU=tg-kensyu-%@scckk.onmicrosoft.com
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

winget install -h --accept-package-agreements --accept-source-agreements -e --id Microsoft.WindowsTerminal
winget install -h --accept-package-agreements --accept-source-agreements -e --id Canonical.Ubuntu

reg IMPORT kensyu-avd-initial-setup.reg
xcopy /E /Y data %USERPROFILE%

"C:\Windows\SysWOW64\OneDriveSetup.exe" /uninstall
