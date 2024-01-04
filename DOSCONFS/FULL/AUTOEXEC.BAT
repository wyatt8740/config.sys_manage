@ECHO OFF
REM Anything you do here will be erased when using CONFIG.BAT to change
REM config profiles, unless changes are also saved to the appropriate
REM autoexec file in one of the subdirectories of \DOSCONFS .

REM YOU HAVE BEEN WARNED!!!!!

PATH A:\UTILS;A:\DEV\BIN;A:\WINDOWS;A:\DOS;A:\;A:\JED
SET TEMP=A:\DOS
SET DOSDIR=A:\DOS

echo Starting CD Driver (mscdex)
A:\DOS\MSCDEX.EXE /D:CD_101 /L:Q

A:\DOS\SMARTDRV.EXE /X
REM MOUSE
REM DOSSHELL
REM MOUSE /R

