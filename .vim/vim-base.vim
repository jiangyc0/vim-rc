" --------------------
" |     通用设置     |
" --------------------
" 开启语法高亮
syntax on
" 开启行号显示
set number
" 不生成以"~"结为的备份文件
set nobackup
" 不自动换行
set nowrap
" 不适配Vi
set nocompatible
" Tab宽度
set tabstop=4
set softtabstop=4
set shiftwidth=4
" 用空格代替Tab
set expandtab
" 使用系统剪切板
set clipboard+=unnamed
" 文件类型检测
filetype on
filetype plugin on
" 根据文件加载缩进方式
filetype indent on
" 打开文件自动检测的编码列表
set fileencodings=utf-8,gb2312,gbk,ucs-bom,cp936,latin1
" 退格键删除文本而非移动光标
set backspace=2
" 用groovy语法高亮.gradle文件，此配置要求打开filetype选择
autocmd BufNewFile,BufRead *.gradle set filetype=groovy
