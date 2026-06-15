@echo off
title Motor ETEMAR AGRO
echo ==========================================
echo LIGANDO OS MOTORES E.T.E.M.A.R...
echo ==========================================

:: Entra na pasta exata do seu projeto
cd /d "C:\Users\Pedro\DLJ 4 etemar agro- Copia\new"

:: Liga o Servidor de Inteligencia Artificial (Backend) em uma nova janela
start "Cerebro IA (Porta 3001)" cmd /k "python server_agro.py"

:: Liga o Servidor do Site (Frontend) em outra nova janela
start "Site ETEMAR (Porta 8000)" cmd /k "python -m http.server 8000"

echo.
echo Tudo pronto! Os servidores estao rodando.
echo Voce ja pode fechar o VS Code.
echo Para acessar, abra o navegador e digite: http://localhost:8000/agro.html
echo.
pause