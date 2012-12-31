@echo off
set LIB_HOME=%cd%\lib\
set JAVA_HOME=%LIB_HOME%\jre6
set Path=%JAVA_HOME%\bin
cls

:main
cls

@echo ┏━━━━━━━━━━  easyCraft 1.1 纪念版  ━━━━━━━━━━━┓
@echo ┃                                                                  ┃
@echo ┃请输入数字或字母进行选择：                                        ┃
@echo ┃                                                                  ┃
@echo ┃[1] 运行Minrcraft 1.4.6                                           ┃
@echo ┃[2] 运行Minrcraft 1.3.2                                           ┃
@echo ┃[3] 运行Minrcraft Beta 1.8                                        ┃
@echo ┃                                                                  ┃
@echo ┃[h] 帮助                                                          ┃
@echo ┃[c] 退出                                                          ┃
@echo ┃                                                                  ┃
@echo ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

set /p i=请输入:
if %i% == 1 goto 146
if %i% == 2 goto 132
if %i% == 3 goto b181
if %i% == h goto help
if %i% == c goto exit
goto main

:146
set APPDATA=%~dp0\1.4.6
java -jar "%LIB_HOME%\Minecraft.jar"
goto exit

:132
set APPDATA=%~dp0\1.3.2
java -jar "%LIB_HOME%\Minecraft.jar"
goto exit

:b181
set APPDATA=%~dp0\b1.8
java -jar "%LIB_HOME%\Minecraft.jar"
goto exit


:help
cls
@echo ┏━━━━━━━━━━━━ easyCraft 测试版 ━━━━━━━━━━━━┓
@echo ┃                                                                  ┃
@echo ┃easyCraft 1.0.1 beta                                              ┃
@echo ┃ziggear制作                                                       ┃
@echo ┃http://code.google.com/p/eazycraft/                               ┃
@echo ┃                                                                  ┃
@echo ┃·转载及修改请注明作者、保留本帮助信息                            ┃
@echo ┃                                                                  ┃
@echo ┃ [任意键返回主菜单]                                               ┃
@echo ┃                                                                  ┃
@echo ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
set /p i=input:
goto main


:exit
exit