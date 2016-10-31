set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" ======================================================

" 插件：NERDTree
" 功能：显示当前目录的文件列表
Plugin 'scrooloose/nerdtree'
" 显示位置：left/right
let NERDTreeWinPos='left'
" 窗口宽度
let NERyTreeWinSize=30
" 键盘映射
map <C-i><C-f> :NERDTreeToggle<CR>

" 插件：IndentLine
" 功能：显示缩进指示线
Plugin 'Yggdroot/indentLine' 
" 颜色配置
let g:indentLine_color_term=239
let g:indentLine_color_gui='#A4E57E'
let g:indentLine_color_tty_light=7
let g:indentLine_color_dark=1

" 插件：Emmet
" 功能：原Zen coding，快速生成HTML、XML代码。
"     默认展开快捷键：<C-y> + ,
Plugin 'mattn/emmet-vim'

" 插件：The-NERD-Commenter
" 功能：快速注释. 必须打开文件类型检测。
"     leader: \
"         \cu 取消当前行注释，
"         \cc 在当前行添加注释
"         选中 + \cu：取消选中行的注释
"         选中 + \cc：在选中行添加注释
Plugin 'The-NERD-Commenter'

" 插件：AutoCompPop
" 功能：自动弹出完成选项
Plugin 'jycggyh/AutoCompPop'

" 插件：easymotion
Plugin 'Lokaltog/vim-easymotion'
" leader &nbsp;
let g:EasyMotion_leader_key='<Space>'

" 名称：Snippets
" 功能：代码片段，为Snipmate或Ultimate提供补全环境
Plugin 'honza/vim-snippets'

" 名称：SnipMate
" 功能：代码片段补全
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'

" 名称：HTML-AutoCloseTag
" 功能：自动关闭HTML标签
Plugin 'HTML-AutoCloseTag'

" ======================================================
call vundle#end()            " required
filetype plugin indent on    " required
