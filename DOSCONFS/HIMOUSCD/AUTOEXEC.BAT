@ECHO OFF
REM "Himem+Mouse+CDROM" DOS config.sys file
REM 
REM Anything you do here will be erased when using CONFIG.BAT to change
REM config profiles, unless changes are also saved to the appropriate
REM autoexec file in one of the subdirectories of \DOSCONFS .
REM YOU HAVE BEEN WARNED!!!!!

echo Starting CD Driver (mscdex)
A:\DOS\MSCDEX.EXE /D:CD_101 /L:Q

REM Load mouse driver here
A:\DOS\MOUSE.COM

REM Common environment variable stuff
REM Autoexec will not be returned to when this ends, so make sure this is last!
A:\DOSCONFS\ENV.BAT
