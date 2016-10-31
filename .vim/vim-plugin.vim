" 插件：fencview
" 功能：检测文件编码，可设为自动探测，也可根据选项":FencView"来人为调整。
" 关闭自动探测
let g:fencview_autodetect=0
" 键盘映射 Ctrl-i + Ctrl-e
map <C-i><C-e> :FencView<CR>

" 名称：AuthorInfoDteect
" 功能：添加作者信息
" dep: vundle: The-NERD-Commenter
let g:vimrc_author='jiangyc'
let g:vimrc_email='jiangyc0@gmail.com'
let g:vimrc_homepage='http://www.jiangyc.com'
