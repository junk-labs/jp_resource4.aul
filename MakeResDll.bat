@echo off
setlocal
title ���\�[�XDLL���쐬

rem rc.exe��������p�X��path�ɒǉ�
call "vcvarsall.bat" x86

:rc
rc.exe /l0 %~dp0jp_resource4.aul.rc

:link
link.exe /DLL /NOENTRY /MACHINE:x86 /SUBSYSTEM:windows,5.0 /INCREMENTAL:NO /NOLOGO /OPT:REF /OPT:ICF /OUT:"%~dp0jp_resource4.aul" "%~dp0jp_resource4.aul.res"

del /q  ""%~dp0jp_resource4.aul.res""

