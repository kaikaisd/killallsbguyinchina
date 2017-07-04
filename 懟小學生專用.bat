@echo '============================================================='
@echo |                                                             |
@echo |                         Hello World                         |
@echo |                                                             |
@echo |                      Writed by kaikaisd                     |
@echo |                                                             |
@echo '============================================================='

:: BatchGotAdmin
:-------------------------------------
REM  --> Check for permissions
    IF "%PROCESSOR_ARCHITECTURE%" EQU "amd64" (
>nul 2>&1 "%SYSTEMROOT%\SysWOW64\cacls.exe" "%SYSTEMROOT%\SysWOW64\config\system"
) ELSE (
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
)

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"=""
    echo UAC.ShellExecute "cmd.exe", "/c ""%~s0"" %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
:--------------------------------------    

@echo "127.0.0.1 360.cn" >> C:\Windows\System32\drivers\etc\hosts
@echo "127.0.0.1 360.com" >> C:\Windows\System32\drivers\etc\hosts
@echo "127.0.0.1 360safe.cn" >> C:\Windows\System32\drivers\etc\hosts
@echo "127.0.0.1 360safe.com" >> C:\Windows\System32\drivers\etc\hosts
@echo "127.0.0.1 yunpan.com" >> C:\Windows\System32\drivers\etc\hosts
@echo "127.0.0.1 yunpan.cn" >> C:\Windows\System32\drivers\etc\hosts
@echo "127.0.0.1 so.cn" >> C:\Windows\System32\drivers\etc\hosts
@echo "127.0.0.1 so.com" >> C:\Windows\System32\drivers\etc\hosts
@echo "127.0.0.1 360totalsecurity.com" >> C:\Windows\System32\drivers\etc\hosts
@echo "127.0.0.1 360totalsecurity.cn" >> C:\Windows\System32\drivers\etc\hosts
@echo "127.0.0.1 ss.bdimg.com" >> C:\Windows\System32\drivers\etc\hosts
@echo "127.0.0.1 2.su.bdimg.com">> C:\Windows\System32\drivers\etc\hosts
@echo "127.0.0.1 s1.bdstatic.com" >> C:\Windows\System32\drivers\etc\hosts
@echo "127.0.0.1 suggestion.baidu.com" >> C:\Windows\System32\drivers\etc\hosts
@echo "127.0.0.1 www.baidu.com" >> C:\Windows\System32\drivers\etc\hosts
@echo "127.0.0.1 4.su.bdimg.com" >> C:\Windows\System32\drivers\etc\hosts
@echo "127.0.0.1 4.su.bdimg.com" >> C:\Windows\System32\drivers\etc\hosts

@echo '============================================================='
@echo |                        Welcome Home                         |
@echo '============================================================='

pause

