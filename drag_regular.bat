@echo off
::This code is made by Genouka.
::This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0.
::If a copy of the MPL was not distributed with this file, You can obtain one at https://mozilla.org/MPL/2.0/.
if not exist "%~1" (
    echo Please drag data.win to the script.
    pause
    exit /b 1
)
set "DatafilePath=%~dp1"
set "GRECDATA=regular_data"

set CLI="C:\Users\29800\Desktop\UTMT\CLI\UndertaleModCli.exe"
set "ExecutePath=%~dp0"


call :generate_data "%~dp0" %1

if not exist "%ExecutePath%game.droid" (
    echo Data generation failed.
    pause
    exit /b 1
)

::Skip APK generation for testing regular data only
echo Data generation finished.
exit /b 0

if not exist "%~dp1template.apk" (
    echo Template APK not found. Generating template APK...
    set /p "RefName=Input Game ID(e.g. travel): "
    set /p "RefName1=Input Display Name(e.g. Traval Version): "
    call :generate_template_apk "%RefName%" "%RefName1%" "%~dp1"
    call :generate_apk "%ExecutePath%game.droid" "%~dp1template.apk"
) else (
    echo Template APK found. Generating APK...
    call :generate_apk "%ExecutePath%game.droid" "%~dp1template.apk"
)

echo Data generation finished.
pause
exit /b 0

:generate_data
:: Arguments:
::  %1 - Execute Path
::  %2 - Data File Path

set Genouka_MVZ2_Port=cli
set Genouka_MVZ2_Port_JumpHardCode=false
set "Genouka_MVZ2_Port_SoundImport_Folder=%DatafilePath%\qm_out"

set Script1="%ExecutePath%mvz2\PortToAnyPlatform.csx"
set Script2="%ExecutePath%%GRECDATA%\r1.csx"
set Script3="%ExecutePath%%GRECDATA%\r2.csx"
set Script4="%ExecutePath%%GRECDATA%\r3.csx"

set "DataFilePath=%~dp2"

del /q /f "%ExecutePath%temp1.win"
del /q /f "%ExecutePath%temp2.win"
del /q /f "%ExecutePath%temp3.win"
del /q /f "%ExecutePath%src.win"
del /q /f "%ExecutePath%game.droid"
del /q /f "%ExecutePath%%GRECDATA%\texts\output_gml_script.gml"
rmdir /s /q "%ExecutePath%files_to_include"

mkdir "%ExecutePath%files_to_include\texts"
xcopy /s /e /y "%DataFilePath%texts" "%ExecutePath%files_to_include\texts"

cd /d "%ExecutePath%"
python files2gml.py
copy /y "%ExecutePath%output_gml_script.gml" "%ExecutePath%%GRECDATA%\texts\output_gml_script.gml"
%CLI% load %2 -s %Script1% -o "%ExecutePath%temp1.win"
%CLI% load "%ExecutePath%temp1.win" -s %Script4% -o "%ExecutePath%temp2.win"
%CLI% load "%ExecutePath%temp2.win" -s %Script3% -o "%ExecutePath%game.droid"

del /q /f "%ExecutePath%temp1.win"
del /q /f "%ExecutePath%temp2.win"
del /q /f "%ExecutePath%temp3.win"
del /q /f "%ExecutePath%%GRECDATA%\texts\output_gml_script.gml"
rmdir /s /q "%ExecutePath%files_to_include"
goto :EOF

:generate_apk
:: Arguments:
::  %1 - Data File Path
::  %2 - Template APK Path
set "DataFilePath=%~dp2"
cd /d "%ExecutePath%"
copy /y "%~2" "%ExecutePath%tpl.zip"
"%ExecutePath%bin\7z.exe" u "%ExecutePath%tpl.zip" game.droid -aoa -r
"%ExecutePath%bin\7z.exe" rn "%ExecutePath%tpl.zip" game.droid assets/game.droid
"%ExecutePath%bin\signapk.exe" sign --ks "%ExecutePath%private\sign.jks" --ks-pass "file:%ExecutePath%private\kspass.txt" --key-pass "file:%ExecutePath%private\keypass.txt" --in "%ExecutePath%tpl.zip" --out signed.apk
goto :EOF

:generate_template_apk
:: Arguments:
::  %1 - RefName    English Code
::  %2 - RefName1   Revision Name
::  %3 - OutputDir  Output Directory
set "RefName=%~1"
set "RefName1=%~2"
set "OutputDir=%~3"
:: Copy template directory to temp location
if exist "%ExecutePath%temp_apk_project\" rmdir /s /q "%ExecutePath%temp_apk_project\"
mkdir "%ExecutePath%temp_apk_project\"
xcopy /s /e /y "%ExecutePath%regular_data\apk_project_templete" "%ExecutePath%temp_apk_project"
python %ExecutePath%replace_string.py "%ExecutePath%temp_apk_project" "com.genouka.travel.mvz2" "com.genouka.%RefName%.mvz2"
python %ExecutePath%replace_string.py "%ExecutePath%temp_apk_project" "{{{REFNAME1}}}" "%RefName1%"
python %ExecutePath%replace_string.py "%ExecutePath%temp_apk_project" "{{{REFNAME2}}}" "%RefName%"
:: Build APK using Apktool
cd /d "%ExecutePath%temp_apk_project\"
java -jar %ExecutePath%regular_data\apktool.jar b -o "%OutputDir%template.apk"
cd /d "%ExecutePath%"
goto :EOF