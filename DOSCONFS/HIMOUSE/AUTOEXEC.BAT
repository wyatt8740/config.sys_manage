@ECHO OFF
REM "Himem+Mouse" DOS config.sys file
REM 
REM Anything you do here will be erased when using CONFIG.BAT to change
REM config profiles, unless changes are also saved to the appropriate
REM autoexec file in one of the subdirectories of \DOSCONFS .
REM YOU HAVE BEEN WARNED!!!!!

SET TEMP=A:\DOS
SET DOSDIR=A:\DOS
REM Load mouse driver here
A:\DOS\MOUSE.COM

PATH A:\UTILS;A:\DEV\BIN;A:\WINDOWS;A:\DOS;A:\;A:\JED;A:\UTILS\EMACS;B:\DEV\TASM;B:\DEV\TC
REM Emacs Stuff
echo on