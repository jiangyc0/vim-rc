@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  Vim setup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal
@REM set APP_HOME and HOME variables
set APP_HOME=%~dp0
if "%APP_HOME%" == "" set APP_HOME=.
if not defined USERPROFILE goto ERROR_NO_HOME_DEFINED
set HOME=%USERPROFILE%

:FIND_GIT_EXE
set GIT_EXE=git.exe
%GIT_EXE% --version >NUL 2>&1
if "%ERRORLEVEL%"=="0" goto FIND_PYTHON_EXE
:: git not found
goto ERROR_NO_GIT

:FIND_PYTHON_EXE
set PYTHON_EXE=python.exe
%PYTHON_EXE% --version >NUL 2>&1
if "%ERRORLEVEL%"=="0" goto INIT
:: python not found
goto ERROR_NO_PYTHON

:INIT
set HOME_VIM=%HOME%\.vim
set HOME_VIMRC=%HOME%\_vimrc
set TMP_VIM=%APP_HOME%.vim
set TMP_VIMRC=%APP_HOME%.vimrc

if exist %HOME_VIM% goto ERROR_EXIST_VIM
echo     move %TMP_VIM% to %HOME_VIM%
move %TMP_VIM% %HOME%

echo clone VundleVim to %HOME_VIM%\bundle\Vundle.vim
git clone https://github.com/VundleVim/Vundle.vim.git %HOME_VIM%bundle\Vundle.vim

if exist %HOME_VIMRC% goto ERROR_EXIST_VIMRC
echo     move %TMP_VIMRC% to %HOME_VIMRC%
move %TMP_VIMRC% %HOME_VIMRC%

echo setup finish, then we will start a vim instance, you can execute :PluginInstall command complate the installer
pause
vim
goto :FINISH

:ERROR_NO_GIT
echo must have git support...
goto FINISH

:ERROR_NO_PYTHON
echo must have python support...
goto FINISH

:ERROR_NO_HOME_DEFINED
echo no home variable defined...
goto FINISH

:ERROR_EXIST_VIM
echo %HOME_VIM% has been exist...
goto FINISH

:ERROR_EXIST_VIMRC
echo %HOME_VIMRC% has been exist...
goto FINISH

:FINISH
echo finish...
pause
