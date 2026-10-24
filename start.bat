@echo off
cd /d "%~dp0"
echo Starting Angel Gonjar's portfolio...
docker compose up --build -d
if errorlevel 1 (
  echo.
  echo Docker could not start the site. Check that Docker Desktop is open.
  pause
  exit /b 1
)
echo.
echo Portfolio running at http://localhost:8080
start "" http://localhost:8080
pause
