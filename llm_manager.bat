@echo off
chcp 65001 >nul
setlocal enabledelayedexpansion

:: ============================================================ 
::  20260309制作
:: ============================================================ 

:: ============================================================ 
::  模型配置区 —— 按需增删 
:: ============================================================ 
set IDX=0
set GIDX=0
:: ── Qwen3.5-0.8B ────────────────────────────────────────────── 
set /a GIDX+=1 & set GRP_NAME_!GIDX!=Qwen3.5-0.8B

:: Qwen3.5-0.8B-UD-Q6_K_XL
set /a IDX+=1 & set MODEL_GRP_!IDX!=!GIDX!
set MODEL_NAME_!IDX!= [ Non-thinking 通用 ] Qwen3.5-0.8B-UD-Q6_K_XL -- 128k 上下文 
set MODEL_CMD_!IDX!="C:\LLama.cpp\llama-server.exe" -m "E:\Qwen3.5-0.8B-GGUF_unsloth\Qwen3.5-0.8B-UD-Q6_K_XL.gguf" -mm "E:\Qwen3.5-0.8B-GGUF_unsloth\mmproj-BF16.gguf" -c 131072 -n -1 -ngl 999 --mmproj-offload --no-mmap -ctk q8_0 -ctv q8_0 -t 6 -b 2048 -ub 1024 -fa on -cb --temp 0.7 --top-p 0.8 --top-k 20 --min-p 0.0 --presence-penalty 1.5 --repeat-penalty 1.0 --host 0.0.0.0 --port 11436 --alias Local_llm -rea off

:: ── gemma-4-E4B ────────────────────────────────────────────── 
set /a GIDX+=1 & set GRP_NAME_!GIDX!=gemma-4-E4B

:: gemma-4-E4B-it-UD-Q5_K_XL
set /a IDX+=1 & set MODEL_GRP_!IDX!=!GIDX!
set MODEL_NAME_!IDX!= [ Non-thinking   ] gemma-4-E4B-it-UD-Q5_K_XL -- 128k 上下文 
set MODEL_CMD_!IDX!="C:\LLama.cpp\llama-server.exe" -m "E:\gemma-4-E4B-it-GGUF_unsloth\gemma-4-E4B-it-UD-Q5_K_XL.gguf" -mm "E:\gemma-4-E4B-it-GGUF_unsloth\mmproj-BF16.gguf" -c 131072 -n -1 -ngl 999 --mmproj-offload --no-mmap -ctk q8_0 -ctv q8_0 -np 10 -kvu -t 6 -b 2048 -ub 1024 -fa on -cb --temp 1.0 --top-p 0.95 --top-k 64 --host 0.0.0.0 --port 11436 --alias Local_llm -rea off

set /a IDX+=1 & set MODEL_GRP_!IDX!=!GIDX!
set MODEL_NAME_!IDX!= [ Thinking        ] gemma-4-E4B-it-UD-Q5_K_XL -- 128k 上下文 
set MODEL_CMD_!IDX!="C:\LLama.cpp\llama-server.exe" -m "E:\gemma-4-E4B-it-GGUF_unsloth\gemma-4-E4B-it-UD-Q5_K_XL.gguf" -mm "E:\gemma-4-E4B-it-GGUF_unsloth\mmproj-BF16.gguf" -c 131072 -n -1 -ngl 999 --mmproj-offload --no-mmap -ctk q8_0 -ctv q8_0 -t 6 -b 2048 -ub 1024 -fa on -cb --temp 1.0 --top-p 0.95 --top-k 64 --host 0.0.0.0 --port 11436 --alias Local_llm -rea on

:: ── gemma-4-26B-A4B ────────────────────────────────────────────── 
set /a GIDX+=1 & set GRP_NAME_!GIDX!=gemma-4-26B-A4B

:: gemma-4-26B-A4B-it-UD-Q5_K_M.gguf
set /a IDX+=1 & set MODEL_GRP_!IDX!=!GIDX!
set MODEL_NAME_!IDX!= [ Non-thinking   ] gemma-4-26B-A4B-it-UD-Q5_K_M -- 128k 上下文 
set MODEL_CMD_!IDX!="C:\LLama.cpp\llama-server.exe" -m "E:\gemma-4-26B-A4B-it-GGUF_unsloth\gemma-4-26B-A4B-it-UD-Q5_K_M.gguf" -mm "E:\gemma-4-26B-A4B-it-GGUF_unsloth\mmproj-BF16.gguf" -c 131072 -n -1 -ngl 999 --n-cpu-moe 26 --mmproj-offload --no-mmap -ctk q8_0 -ctv q8_0 -t 6 -b 2048 -ub 1024 -fa on -cb --temp 1.0 --top-p 0.95 --top-k 64 --host 0.0.0.0 --port 11436 --alias Local_llm -rea off

set /a IDX+=1 & set MODEL_GRP_!IDX!=!GIDX!
set MODEL_NAME_!IDX!= [ Thinking        ] gemma-4-26B-A4B-it-UD-Q5_K_M -- 128k 上下文 
set MODEL_CMD_!IDX!="C:\LLama.cpp\llama-server.exe" -m "E:\gemma-4-26B-A4B-it-GGUF_unsloth\gemma-4-26B-A4B-it-UD-Q5_K_M.gguf" -mm "E:\gemma-4-26B-A4B-it-GGUF_unsloth\mmproj-BF16.gguf" -c 131072 -n -1 -ngl 999 --n-cpu-moe 26 --mmproj-offload --no-mmap -ctk q8_0 -ctv q8_0 -t 6 -b 2048 -ub 1024 -fa on -cb --temp 1.0 --top-p 0.95 --top-k 64 --host 0.0.0.0 --port 11436 --alias Local_llm -rea on

:: ── gemma-4-31B ────────────────────────────────────────────── 
set /a GIDX+=1 & set GRP_NAME_!GIDX!=gemma-4-31B

:: gemma-4-31B-it-UD-Q5_K_XL
set /a IDX+=1 & set MODEL_GRP_!IDX!=!GIDX!
set MODEL_NAME_!IDX!= [ Non-thinking   ] gemma-4-31B-it-UD-Q5_K_XL -- 128k 上下文 
set MODEL_CMD_!IDX!="C:\LLama.cpp\llama-server.exe" -m "E:\gemma-4-31B-it-GGUF_unsloth\gemma-4-31B-it-UD-Q5_K_XL.gguf" -mm "E:\gemma-4-31B-it-GGUF_unsloth\mmproj-BF16.gguf" -c 131072 -n -1 -fit on -fitc 131072 --mmproj-offload --no-mmap -ctk q8_0 -ctv q8_0 -t 6 -b 512 -ub 512 -fa on -cb --temp 0.7 --top-p 0.8 --top-k 20 --min-p 0.0 --presence-penalty 1.5 --repeat-penalty 1.0 --host 0.0.0.0 --port 11436 --alias Local_llm -rea off

set /a IDX+=1 & set MODEL_GRP_!IDX!=!GIDX!
set MODEL_NAME_!IDX!= [ Thinking       ] gemma-4-31B-it-UD-Q5_K_XL -- 128k 上下文 
set MODEL_CMD_!IDX!="C:\LLama.cpp\llama-server.exe" -m "E:\gemma-4-31B-it-GGUF_unsloth\gemma-4-31B-it-UD-Q5_K_XL.gguf" -mm "E:\gemma-4-31B-it-GGUF_unsloth\mmproj-BF16.gguf" -c 131072 -n -1 -fit on -fitc 131072 --mmproj-offload --no-mmap -ctk q8_0 -ctv q8_0 -t 6 -b 512 -ub 512 -fa on -cb --temp 0.7 --top-p 0.8 --top-k 20 --min-p 0.0 --presence-penalty 1.5 --repeat-penalty 1.0 --host 0.0.0.0 --port 11436 --alias Local_llm -rea on

:: ============================================================ 
set CURRENT_MODEL=
:: ────────────────────────────────────────────── 
:MAIN_MENU
echo.
echo  ╔══════════════════════════════════════╗ 
echo  ║               主菜单                 ║ 
echo  ╚══════════════════════════════════════╝ 
if not "!CURRENT_MODEL!"=="" ( 
    echo   当前运行中: !CURRENT_MODEL!
    echo  ────────────────────────────────────── 
)
echo   请选择模型系列： 
echo.
:: for /l 循环，格式：(起始值,步长,结束值) 
:: %%g 是循环变量（在脚本中用双%，在命令行中用单%） 
:: !MODEL_NAME_%%i! 使用延迟扩展来动态访问变量 
for /l %%g in (1,1,%GIDX%) do ( 
    echo     [%%g]  !GRP_NAME_%%g!
)
echo     [0]  退出程序 
echo.
set "GRPCHOICE="
set /p GRPCHOICE= 请输入编号后按回车： 

if "!GRPCHOICE!"=="0" goto EXIT_PROGRAM

:: 合法性校验 
set VALID=0
for /l %%g in (1,1,%GIDX%) do ( 
    if "!GRPCHOICE!"=="%%g" set VALID=1
)
if "!VALID!"=="0" ( 
    echo.
    echo   ⚠ 无效编号，请重新选择。 
    timeout /t 1 /nobreak >nul
    goto MAIN_MENU
)

:: ────────────────────────────────────────────── 
:MODEL_MENU
echo.
echo  ╔══════════════════════════════════════╗ 
echo  ║             选择具体模型             ║ 
echo  ╚══════════════════════════════════════╝ 
echo   系列：!GRP_NAME_%GRPCHOICE%!
echo  ────────────────────────────────────── 
echo.
set SUBIDX=0
for /l %%i in (1,1,%IDX%) do ( 
    if "!MODEL_GRP_%%i!"=="!GRPCHOICE!" ( 
        set /a SUBIDX+=1
        set SUB_MAP_!SUBIDX!=%%i
        echo     [!SUBIDX!]  !MODEL_NAME_%%i!
    )
)
echo     [0]  返回上级菜单 
echo.
set "SUBCHOICE=" 
set /p SUBCHOICE= 请输入编号后按回车： 

if "!SUBCHOICE!"=="0" goto MAIN_MENU 

set VALID=0
for /l %%s in (1,1,%SUBIDX%) do (
    if "!SUBCHOICE!"=="%%s" set VALID=1 
)
if "!VALID!"=="0" (
    echo.
    echo   ⚠ 无效编号，请重新选择。 
    timeout /t 1 /nobreak >nul
    goto MODEL_MENU
)

:: 将子菜单编号映射回全局模型编号 
set CHOICE=!SUB_MAP_%SUBCHOICE%!

:: 有模型在运行则先杀掉 
if not "!CURRENT_MODEL!"=="" (
    echo.
    echo   正在停止 !CURRENT_MODEL!...
    call :KILL_PORT
)

:: 启动新模型 
set CURRENT_MODEL=!MODEL_NAME_%CHOICE%!
set LAUNCH_CMD=!MODEL_CMD_%CHOICE%!
echo.
echo   正在启动：!CURRENT_MODEL!
echo   启动指令：!LAUNCH_CMD!
echo.
echo   日志将在新窗口显示... 
start "!CURRENT_MODEL! - LLaMA Server" !LAUNCH_CMD! 

:: ────────────────────────────────────────────── 
:RUNNING_MENU
echo.
echo  ╔══════════════════════════════════════╗ 
echo  ║         LLM Server Manager           ║ 
echo  ╚══════════════════════════════════════╝ 
echo   当前运行中: !CURRENT_MODEL! 
echo  ────────────────────────────────────── 
echo   请选择操作： 
echo.
echo     [1]  切换模型 
echo     [2]  退出当前模型 
echo     [0]  退出程序 
echo.
set "ACTION="
set /p ACTION= 请输入编号后按回车： 

if "!ACTION!"=="1" goto MAIN_MENU
if "!ACTION!"=="2" (
    echo.
    echo   正在停止 !CURRENT_MODEL!... 
    call :KILL_PORT
    set CURRENT_MODEL=
    timeout /t 1 /nobreak >nul
    goto MAIN_MENU
)
if "!ACTION!"=="0" goto EXIT_PROGRAM

echo.
echo   ⚠ 无效输入，请重新选择。 
timeout /t 1 /nobreak >nul
goto RUNNING_MENU

:: ────────────────────────────────────────────── 
:KILL_PORT
for /f "tokens=5" %%a in ('netstat -aon 2^>nul ^| find ":11436 "') do (
    taskkill /PID %%a /F >nul 2>&1
)
exit /b

:: ────────────────────────────────────────────── 
:EXIT_PROGRAM
if not "!CURRENT_MODEL!"=="" ( 
    echo.
    echo   正在停止 !CURRENT_MODEL!... 
    call :KILL_PORT
)
echo.
echo   已退出，再见。 
timeout /t 1 /nobreak >nul
exit /b