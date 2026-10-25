@echo off
setlocal
if not exist "%~dp0index.html" (
  echo Please extract the entire ZIP first.
  pause
  exit /b 1
)
start "" "%~dp0index.html"
