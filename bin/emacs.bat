@echo off

rem set HOME=%~dp0home
rem change home path by adding below line
set HOME=%USERPROFILE%\home
set MSYS_ROOT=%USERPROFILE%\msys64
set MSYS2_PATH_TYPE=strict
%MSYS_ROOT%\\usr\\bin\\env MSYSTEM=UCRT64 /usr/bin/bash -lc "source $HOME/.bashrc && emacs"
