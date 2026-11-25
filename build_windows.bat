@echo off
setlocal
where cmake >nul 2>nul || (echo CMake is not installed. Install CMake first.& exit /b 1)
where git >nul 2>nul || (echo Git is not installed. Install Git first.& exit /b 1)
cmake -B build -S . -G "Visual Studio 17 2022" -A x64
if errorlevel 1 exit /b %errorlevel%
cmake --build build --config Release
if errorlevel 1 exit /b %errorlevel%
echo.
echo Build finished. Look in build\ShanksComp_artefacts\Release\VST3\
pause
