@echo off
REM Simple launcher for Windows: usage: scripts\run.bat [platform]
REM Example: scripts\run.bat win

SETLOCAL ENABLEDELAYEDEXPANSION
IF "%~1"=="" (
  SET JAVA_FX_PLATFORM=win
) ELSE (
  SET JAVA_FX_PLATFORM=%~1
)
echo Launching with -Djavafx.platform=%JAVA_FX_PLATFORM%
mvn -q -Djavafx.platform=%JAVA_FX_PLATFORM% javafx:run
ENDLOCAL
