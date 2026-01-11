@echo off

net stop Spooler

del /Q /F /S %systemroot%\System32\spool\PRINTERS\*

net start Spooler

sc query Spooler
@REM pause