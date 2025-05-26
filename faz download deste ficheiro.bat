@echo off
title = FILME_PETER_DRAGON_DOWLOAD
set w=[97m
set p=[95m
set b=[96m
set o=[1m
cls 
chcp 65001 >nul 2>&1
cls 
:MENU
echo.                 %b%"═══════════════════════════════════════════════════════════════════════════════"%w%
echo.                                                
echo.                 %p%[%w%1%p%]%w% Dowload do NET     
echo.                 %p%[%w%2%p%]%w% Dowload do Github                                   
echo.                 %p%[%w%M%p%]%w% Sair
echo.                 %b%"═══════════════════════════════════════════════════════════════════════════════"%w%
echo.                  %W%Faz primeiro dowload do NET independemente do PC
echo.                 %W% Depois executa o Dowload do Github
echo.                 %W% Ou se quiseres clicka m para sair do programa
echo.                 %b%"═══════════════════════════════════════════════════════════════════════════════"%w%
set /p input=:
if /i %input% == 1 goto NET
if /i %input% == 2 goto GitHub
if /i %input% == m goto sair
 
:GitHub
@echo off
cls

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
  "[System.Windows.Forms.MessageBox]::Show('Download do ficheiro .RAR necessario.', 'Peter_Dragon Github', [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Information)"

:: Baixa o arquivo .RAR
echo.
echo A fazer o dowload dos arquivos .RAR do GitHub...
curl -L -o "%RAR%" "%URL%"

:: Move o .RAR para a pasta de destino
move /Y "%RAR%" "%DEST%\resources.rar"

echo.
echo [OK] Arquivo transferido para: %DEST%\resources.rar

cls
powershell -Command ^
  "Add-Type -AssemblyName System.Windows.Forms; " ^
  "[System.Windows.Forms.MessageBox]::Show('Clicka Ok para ir para o menu para sair.', 'GitHub dowload', [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Information)"
goto MENU

:sair
cls
color 5
powershell -Command ^
  "Add-Type -AssemblyName System.Windows.Forms; " ^
  "[System.Windows.Forms.MessageBox]::Show('Click no OK para sair', 'sair', [System.Windows.Forms.MessageBoxButtons]::Ok, [System.Windows.Forms.MessageBoxIcon]::Information)"
exit


:NET
cls
color 5
CLS
echo.
echo.
echo [                             0%                            ]
timeout /t 3 /nobreak > NUL
CLS

echo.
echo.
echo [==                           3.5%                          ]
timeout /t 3 /nobreak > NUL
cls

echo.
echo.
echo [====                         7.0%                          ]
echo.
timeout /t 2 /nobreak > NUL
cls

echo.
echo.
echo [=====                        10.5%                         ]
echo.
timeout /t 4 /nobreak > NUL
cls

echo.
echo.
echo [======                       14.5%                         ]
echo.
timeout /t 2 /nobreak > NUL
cls

echo.
echo.
echo [========                     18.0%                         ]
echo.
timeout /t 2 /nobreak > NUL
cls

echo.
echo.
echo [==========                   21.5%                         ]
echo.
timeout /t 6 /nobreak > NUL
cls

echo.
echo.
echo [========================     40.0%                         ]
echo.
timeout /t 3 /nobreak > NUL
cls

echo.
echo.
echo [=============================85.0%===================     ]
echo.
timeout /t 5 /nobreak > NUL
cls

echo.
echo.
echo [=============================93.5%=====================   ]
echo.
timeout /t 6 /nobreak > NUL

echo.
echo.
echo [=============================100.0%=======================]
echo %w%- Acabou! %b%

cls
goto MENU
