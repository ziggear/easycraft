@echo off
set LIB_HOME=%cd%\lib\
set JAVA_HOME=%LIB_HOME%\jre6
set Path=%JAVA_HOME%\bin
cls

:main
cls

@echo ����������������������  easyCraft 1.1 �����  ������������������������
@echo ��                                                                  ��
@echo �����������ֻ���ĸ����ѡ��                                        ��
@echo ��                                                                  ��
@echo ��[1] ����Minrcraft 1.4.6                                           ��
@echo ��[2] ����Minrcraft 1.3.2                                           ��
@echo ��[3] ����Minrcraft Beta 1.8                                        ��
@echo ��                                                                  ��
@echo ��[h] ����                                                          ��
@echo ��[c] �˳�                                                          ��
@echo ��                                                                  ��
@echo ����������������������������������������������������������������������

set /p i=������:
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
@echo �������������������������� easyCraft ���԰� ��������������������������
@echo ��                                                                  ��
@echo ��easyCraft 1.0.1 beta                                              ��
@echo ��ziggear����                                                       ��
@echo ��http://code.google.com/p/eazycraft/                               ��
@echo ��                                                                  ��
@echo ����ת�ؼ��޸���ע�����ߡ�������������Ϣ                            ��
@echo ��                                                                  ��
@echo �� [������������˵�]                                               ��
@echo ��                                                                  ��
@echo ����������������������������������������������������������������������
set /p i=input:
goto main


:exit
exit