@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)
cd /d %~dp0
start setup.exe /configure config.xml
exit