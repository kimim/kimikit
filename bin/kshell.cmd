@echo off
set HOME=%USERPROFILE%\home
rem hand over all parameters to msys2_shell.cmd
%USERPROFILE%\msys64\msys2_shell.cmd -ucrt64 -defterm -no-start %*
