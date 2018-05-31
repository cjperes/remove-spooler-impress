@echo off

net stop spooler 

del %systemroot%\System32\spool\PRINTERS\*.* /q

echo Deletando Spooler
 
sc delete spooler

echo Criando Spooler

sc create Spooler binpath= "C:\WINDOWS\system32\spoolsv.exe" start= auto displayname= "Spooler de impressao" depend= rpcss

echo Iniciando Spooler

net start spooler

pause

