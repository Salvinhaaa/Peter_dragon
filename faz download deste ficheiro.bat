@echo off
:: 0PT1MAX Tweaking utility

:: Reinicia o script em uma janela maximizada, se necessário
if not "%1" == "max" (
    start /MAX cmd /c "%~f0" max
    exit /b
)

:: Caminhos
set "DEST=C:\FILME_PETER_DRAGON"
set "RAR=%temp%\resources.rar"
set "URL=https://github.com/Salvinhaaa/Peter_dragon/releases/download/movue/resources.rar"

:: Cria a pasta de destino, se não existir
md "%DEST%" 2>nul

:: Mensagem informativa
powershell -Command ^
  "Add-Type -AssemblyName System.Windows.Forms; " ^
  "[System.Windows.Forms.MessageBox]::Show('Download do ficheiro .RAR necessário.', 'Peter_Dragon Github', [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Information)"

:: Baixa o arquivo .RAR
echo.
echo Baixando arquivo .RAR do GitHub...
curl -L -o "%RAR%" "%URL%"

:: Move o .RAR para a pasta de destino
move /Y "%RAR%" "%DEST%\resources.rar"

echo.
echo [OK] Arquivo transferido para: %DEST%\resources.rar
pause
exit /b
