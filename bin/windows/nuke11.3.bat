@echo off

set __app__="Nuke11.3v1"
set __exe__="C:\Program Files\Nuke11.3v1\Nuke11.3.exe"
if not exist %__exe__% goto :missing_app

start %~dp0qt5_install.bat
start %__app__% %__exe__% %*

goto :eof

:missing_app
    echo ERROR: %__app__% not found in %__exe__%
    exit /B 1
