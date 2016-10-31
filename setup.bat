@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  Vim setup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal
set APP_HOME=%~dp0
if "%APP_HOME%" == "" set APP_HOME=.
if not defined USERPROFILE goto ERROR_NO_HOME_DEFINED
set HOME=%USERPROFILE%

:FIND_GIT_EXE
set GIT_EXE=git.exe
%GIT_EXE% --version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto FIND_PYTHON_EXE
else goto FAILED

:FIND_PYTHON_EXE
set PYTHON_EXE=python.exe
%PYTHON_EXE% --version >NUL 2>&1
if %ERRORLEVEL% == "0" goto INIT
else goto FAILED

:INIT
set HOME_VIM=%HOME%\.vim\
set HOME_VIM_BAK=%HOME%\.vim.bak\
set HOME_VIMRC=%HOME%\_vimrc
set HOME_VIMRC_BAK=%HOME%\_vimrc.bak
set TMP_VIM=%APP_HOME%\.vim\
set TMP_VIMRC=%APP_HOME%\.vimrc

if exist %HOME_VIM% (
    :: rename .vim folder
    if exist %HOME_VIM_BAK% goto ERROR_EXIST_VIM_BAK
    else move "%HOME_VIM%" "%HOME_VIM_BAK%"
)
move %TMP_VIM% %HOME_VIM%

git clone https://github.com/VundleVim/Vundle.vim.git git clone https://github.com/VundleVim/Vundle.vim.git %HOME_VIM%bundle\Vundle.vim

if exist %HOME_VIMRC% (
    if exist %HOME_VIMRC_BAK% goto ERROR_EXIST_VIMRC_BAK
    else move %HOME_VIMRC% %HOME_VIMRC_BAK%
)
move %TMP_VIMRC% %HOME_VIMRC%

echo setup finish, then we will start a vim instance, you can execute :PluginInstall command complate the installer
pause
vim
goto :FINISH

:ERROR_NO_HOME_DEFINED
echo no home variable defined...
goto FINISH

:ERROR_EXIST_VIM_BAK
echo %HOME_VIM_BAK% has been exist...
goto FINISH

:FAILED
echo require git and python support but you have not install...

:FINISH
echo finish...
