@ECHO OFF
REM "Himem + CD-ROM" DOS config.sys file

REM Anything you do here will be erased when using CONFIG.BAT to change
REM config profiles, unless changes are also saved to the appropriate
REM autoexec file in one of the subdirectories of \DOSCONFS .

REM YOU HAVE BEEN WARNED!!!!!

A:\DOS\MSCDEX.EXE /D:CD_101 /L:Q

REM Common environment variable stuff
REM Autoexec will not be returned to when this ends, so make sure this is last!
A:\DOSCONFS\ENV.BAT
