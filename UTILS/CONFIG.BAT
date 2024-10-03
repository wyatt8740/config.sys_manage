echo off
:start
cls
echo.  Choose a DOS config profile:
echo.
echo. 1) Full (Normal and/or Windows)
echo. 2) Himem (Games)
echo. 3) Himem + CD-ROM
echo. 4) Himem + Mouse (Games)
echo. 5) Himem + Mouse + CD-ROM
echo. 6) CD-ROM Only
echo. 7) Minimal
echo. 0) Quit without making changes
echo.
echo.
echo.
choice /c:12345670 /n Make your selection: 

if errorlevel 8 goto leave
if errorlevel 7 goto minimal
if errorlevel 6 goto cdrom
if errorlevel 5 goto himouscd
if errorlevel 4 goto himouse
if errorlevel 3 goto himemcd
if errorlevel 2 goto himem
if errorlevel 1 goto normal

:normal
echo Setting up for "Full/Normal" boot.
set CONFFILE=\dosconfs\full\config.sys
set AUTOEX=\dosconfs\full\autoexec.bat
goto checkcnf

:himem
echo Setting up for "Himem" boot.
set CONFFILE=\dosconfs\himem\config.sys
set AUTOEX=\dosconfs\himem\autoexec.bat
goto checkcnf

:himemcd
echo Setting up for "Himem + CD" boot.
set CONFFILE=\dosconfs\himemcd\config.sys
set AUTOEX=\dosconfs\himemcd\autoexec.bat
goto checkcnf

:himouse
echo Setting up for "Himem + Mouse" boot.
set CONFFILE=\dosconfs\himouse\config.sys
set AUTOEX=\dosconfs\himouse\autoexec.bat
goto checkcnf

:himouscd
echo Setting up for "Himem + Mouse + CD" boot.
set CONFFILE=\dosconfs\himouscd\config.sys
set AUTOEX=\dosconfs\himouscd\autoexec.bat
goto checkcnf

:cdrom
echo Setting up for "CD-ROM" boot
set CONFFILE=\dosconfs\cdrom\config.sys
set AUTOEX=\dosconfs\cdrom\autoexec.bat
goto checkcnf

:minimal
echo Setting up for "Minimal" boot.
set CONFFILE=\dosconfs\min\config.sys
set AUTOEX=\dosconfs\min\autoexec.bat
goto checkcnf

:checkcnf
if exist %CONFFILE% goto inst1
echo Error: Could not find source file %CONFFILE%
echo Quitting without making changes!
goto end

:inst1
REM Pre-condition: %CONFFILE% must have been verified to exist!
REM Pre-condition: %CONFFILE% and %AUTOEX% must have been defined/set!
REM First, back up existing CONFIG.SYS (if present):
if exist \CONFIG.SYS move /Y \CONFIG.SYS \CONFIG.BAK
copy /Y %CONFFILE% \CONFIG.SYS
echo Created CONFIG.SYS successfully.
if exist %AUTOEX% goto :inst2
echo Warning: %AUTOEX% does not seem to exist! Skipping AUTOEXEC.BAT creation.
goto end

:inst2
REM Pre-condition: %AUTOEX% must have been verified to exist!
REM Pre-condition: %AUTOEX% must have been defined!
REM First, back up existing AUTOEXEC.BAT (if present):
if exist \AUTOEXEC.BAT move /Y \AUTOEXEC.BAT \AUTOEXEC.BAK
copy /Y %AUTOEX% \AUTOEXEC.BAT
echo Created AUTOEXEC.BAT successfully.
goto end

:leave
echo Quitting without making changes, as requested.
goto end

:end
set AUTOEX=
set CONFFILE=
