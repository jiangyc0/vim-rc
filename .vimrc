" 自定义Vim运行时
set runtimepath+=~/.vim

" 在Windows平台上，做一些对Windows程序的适配，如通用快捷键等。
if has("win32")
    source $VIMRUNTIME/mswin.vim    
endif

" 加载通用配置
source ~/.vim/vim-base.vim

" GUI配置
if has("gui_running")
    source ~/.vim/vim-gui.vim
endif

" Vundle及其管理的扩展
source ~/.vim/vim-vundle.vim

" 本地扩展
source ~/.vim/vim-plugin.vim
