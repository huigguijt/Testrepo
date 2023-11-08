#Enable dark mode
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name AppsUseLightTheme -Value 0

#Download software
Invoke-WebRequest -Uri https://mega.nz/MEGAsyncSetup64.exe -OutFile MEGAsyncSetup64.exe
Invoke-WebRequest -Uri https://www.gphotoshow.com/files/wpsprosetup64.exe -OutFile wpsprosetup64.exe
Invoke-WebRequest -Uri https://laptop-updates.brave.com/latest/winx64 -OutFile bravesetup.exe
Invoke-WebRequest -Uri https://ftp2.nluug.nl/mediaplayer/vlc/vlc/3.0.20/win64/vlc-3.0.20-win64.exe -OutFile vlc-3.0.20-win64.exe

#Install software
.\MEGAsyncSetup64.exe /SILENT /VERYSILENT
.\wpsprosetup64.exe
.\bravesetup.exe
.\vlc-3.0.20-win64.exe /S