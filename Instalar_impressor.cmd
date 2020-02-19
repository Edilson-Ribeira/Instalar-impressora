@echo off
rem AUTOR EDILSON RODRIGUES DOS DANTOS
color A
:INICIO
cls
echo.
echo                     [DATA: %DATE%  HORA: %TIME%]
echo.
echo        ------------------------------------------------------
echo        [HOSTNAME: %COMPUTERNAME%  USUARIO LOGADO: %USERNAME%]
echo        ------------------------------------------------------
@echo          _________________________________________________
@echo          *************************************************
@echo          ***            INSTALACAO DA IMPRESSORA       ***
@echo          *************************************************
@echo          _________________________________________________
@echo.
@echo                     ESCOLHA UMA DAS OPCOES ABAIXO
@echo.
@echo                     [1] - IMPRESSORA PRETO E BRANCO
@echo                     [2] - IMPRESSORA COLORIDA
@echo                     [3] - SAIR
@echo.
rem Comando que pega a opção que usuario digita e armazena na variavel 'opc'
set /p opc=[Digite uma opcao:]
rem Condição que verifica a opção escolhida pelo usuario e direciona para ação desejada.
if %opc% == 1 goto PRETO_BRANCO 
if %opc% == 2 goto COLORIDA
if %opc% == 3 goto SAIR
if %opc% GEQ 4 goto INICIO


rem Codigo que faz a instalação da impressora colorida.
:COLORIDA
rem Aqui voce deve anterar incluindo o servidor onde a impressaro esta e tambem o nome da impressora
start \\servidor_de_impressão\impressoraColorida
cls
@echo.
@echo                     INSTALACAO CONCLUIDA!!
@echo.
pause
cls
rem fim do codigo da instalação da impressora colorida e direciona para inicio do programa
goto INICIO

rem Codigo que faz a instalação da impressora colorida.
:PRETO_BRANCO
rem Aqui voce deve anterar incluindo o servidor onde a impressaro esta e tambem o nome da impressora
start \\servidor_de_impressão\impressoraPretoeBranca
cls
@echo.
@echo                     INSTALACAO CONCLUIDA!!
@echo.
pause
cls
goto INICIO
:SAIR
exit'
