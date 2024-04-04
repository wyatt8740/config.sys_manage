echo off
:start
cls
echo.  Choose a DOS config profile:
echo.
echo. 1) Full (Normal)
echo. 2) Himem (Games)
echo. 3) Himem + Mouse (Games)
echo. 4) Minimal
echo. 0) Quit without making changes
echo.
echo.
echo.
choice /c:12340 /n Make your selection: 

if errorlevel 5 goto leave
if errorlevel 4 goto minimal
if errorlevel 3 goto himouse
if errorlevel 2 goto himem
if errorlevel 1 goto normal

:normal
echo Setting up for "normal" boot.
set CONFFILE=\dosconfs\full\config.sys
set AUTOEX=\dosconfs\full\autoexec.bat
goto checkcnf

:himem
echo Setting up for "Himem" boot.
set CONFFILE=\dosconfs\himem\config.sys
set AUTOEX=\dosconfs\himem\autoexec.bat
goto checkcnf

:himouse
echo Setting up for "Himem" boot.
set CONFFILE=\dosconfs\himouse\config.sys
set AUTOEX=\dosconfs\himouse\autoexec.bat
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

