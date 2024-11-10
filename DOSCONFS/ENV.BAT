@ECHO OFF
REM this must be the last thing to run inside autoexec.bat, because it will not
REM be able to return to whatever would come after it inside autoexec.bat.

REM this is a common script called by all autoexec.bat variants that sets up
REM the environment.

PATH A:\UTILS;A:\DEV\BIN;A:\WINDOWS;A:\DOS;A:\;A:\JED;B:\DEV\TASM;B:\DEV\TC

SET TEMP=A:\DOS
SET DOSDIR=A:\DOS

REM Emacs Stuff

@echo on
