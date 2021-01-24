@echo off

if '%2'=='' goto :usage
if '%1'=='sql' goto :runsql
if '%1'=='ctl' goto :runctl
if '%1'=='dmp' goto :rundmp
goto :usage

:runsql
for /F %%i in ('dir /b *_syntax.sql') do (
   @echo Run script %%i ...
   if not exist %%~ni.log sqlplus -L %2 @%%~ni.sql > %%~ni.log
)
goto :end

:runctl
for /F %%i in ('dir /b *_sqlldr.ctl') do (
   @echo Run SQL*Loader %%i ...
   if not exist %%~ni.log sqlldr userid=%2 control=%%~ni.ctl log=%%~ni.log
)
goto :end

:rundmp
for /F %%i in ('dir /b *.dmp') do (
   @echo Run Import %%i ...
   if not exist %%~ni.log imp %2 file=%%~ni.dmp log=%%~ni.log buffer=16777216 ignore=y full=y
)

goto :end

:usage
@echo Connection Info Required!
@echo Usage:
@echo       loadall.bat sql user/pass@tns
@echo       loadall.bat ctl user/pass@tns
@echo       loadall.bat dmp user/pass@tns

:end
