@echo off
echo =============================================================
echo ================= MADE BY SHEN4WY ============================
echo =============================================================
echo Welcome to the Lua Executor for FiveM!
tasklist | find /i "FiveM.exe" > nul
if %errorlevel% equ 0 (
    set /p luaCode="Enter your Lua code: "
    echo %luaCode% >"%temp%\tempLua.lua"
    FiveM.exe -execute "%temp%\tempLua.lua"
    del "%temp%\tempLua.lua"
    echo Lua code executed successfully!
) else (
    echo FiveM.exe is not running. Please start FiveM before using this executor.
)
pause > nul
echo.
echo =============================================================
echo ============ THANK YOU FOR USING SHEN4WY'S TOOL ===============
echo =============================================================
pause > nul