@ECHO OFF
REM "CD-ROM" DOS config.sys file

REM Anything you do here will be erased when using CONFIG.BAT to change
REM config profiles, unless changes are also saved to the appropriate
REM autoexec file in one of the subdirectories of \DOSCONFS .

REM YOU HAVE BEEN WARNED!!!!!

echo Starting CD Driver (mscdex)
A:\DOS\MSCDEX.EXE /D:CD_101 /L:Q

PATH A:\UTILS;A:\DEV\BIN;A:\WINDOWS;A:\DOS;A:\;A:\JED;A:\UTILS\EMACS;B:\DEV\TASM;B:\DEV\TC

SET TEMP=A:\DOS
SET DOSDIR=A:\DOS

REM Emacs Stuff
