@echo off
::This code is made by Genouka.
::This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0.
::If a copy of the MPL was not distributed with this file, You can obtain one at https://mozilla.org/MPL/2.0/.

setlocal enabledelayedexpansion

title 秋冥MVZ2一键移植工具

:: 获取脚本所在目录
set "SCRIPT_DIR=%~dp0"
set "SCRIPT_DIR=%SCRIPT_DIR:~0,-1%"
set "FFMPEG=%SCRIPT_DIR%bin\ffmpeg.exe"
cd /d "%~dp0"

echo =============================================
echo 秋冥MVZ2音频转换工具（LocalVer） V3.0  2025-11-03
echo Bilibili: @秋冥散雨_Genouka
echo =============================================
:: 检查必要的工具是否存在
if not exist "%FFMPEG%" (
    echo 错误：找不到 ffmpeg.exe
    pause
    exit /b 1
)

:: 获取用户输入的 data.win 文件路径
if not "%~1"=="" (
    set "DATA_WIN_PATH=%~1"
    goto :e212
)
set /p "DATA_WIN_PATH=请输入 data.win 文件的完整路径（可以拖拽后回车）: "
:e212
set "DATA_WIN_PATH=%DATA_WIN_PATH:"=%"
:: 检查输入的路径是否存在
if not exist "%DATA_WIN_PATH%" (
    echo 错误：找不到文件 "%DATA_WIN_PATH%"
    pause
    exit /b 1
)

call :proc1 "%DATA_WIN_PATH%"
pause
exit /b 0

:proc1
:: 检查文件名是否为 data.win
if /i not "%~nx1"=="data.win" (
    echo 错误：输入的文件名不是 data.win
    pause
    exit /b 1
)

:: 提取 data.win 所在目录
set "DATA_DIR=%~dp1"
set "DATA_DIR=%DATA_DIR:~0,-1%"
echo.
echo 数据目录: %DATA_DIR%
echo 脚本目录: %SCRIPT_DIR%
echo.

:: 创建输出目录
set "OUTPUT_DIR=%DATA_DIR%\qm_out"
if not exist "%OUTPUT_DIR%" (
    mkdir "%OUTPUT_DIR%"
    echo 创建输出目录: %OUTPUT_DIR%
) else (
    echo 输出目录已存在: %OUTPUT_DIR%
)

echo.
echo 开始搜索并转换音频文件...
echo.

:: 计数器
set /a CONVERTED=0
set /a UNCONVERTED=0
set /a SKIPPED=0

:: 搜索并转换音频文件
for /r "%DATA_DIR%" %%f in (*.mp3 *.wav *.ogg) do (
    set "FILE_PATH=%%f"
    set "FILE_NAME=%%~nf"
    set "FILE_DIR=%%~dpf"
    
    :: 跳过输出目录中的文件
    echo !FILE_DIR! | findstr /i "qm_out" >nul
    if !errorlevel! equ 0 (
        echo 跳过输出目录中的文件: %%f
        set /a SKIPPED+=1
    ) else (
        :: 构建输出文件路径
        set "OUTPUT_FILE=%OUTPUT_DIR%\qm!FILE_NAME!.ogg"
        if exist "!OUTPUT_FILE!" (
            echo 跳过了已存在的文件: !OUTPUT_FILE!
            set /a SKIPPED+=1
        ) else (
            
            :: 执行 ffmpeg 转换
            "%FFMPEG%" -fflags +genpts -i "%%f" -vsync vfr -c:a libvorbis -ar 44100 -ac 2 -b:a 48k -y "!OUTPUT_FILE!" >nul
            
            if !errorlevel! equ 0 (
                echo !FILE_NAME! 转换成功[!CONVERTED!]
                set /a CONVERTED+=1
            ) else (
                echo !FILE_NAME! 转换失败（警告）
                set /a UNCONVERTED+=1
            )
            echo.
        )
    )
)

echo.
echo 音频文件转换完成!
echo 成功转换: %CONVERTED% 个文件
echo 转换失败: %UNCONVERTED% 个文件
echo 跳过: %SKIPPED% 个文件
echo.

goto :EOF
