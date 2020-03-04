" show the line number
set number

" open the syntax on
syntax on

" press F2 to enter the paste pattern
set pastetoggle=<F2>

" high light search
set hlsearch

" use jj to enter the normal pattern
inoremap jj <Esc>`^

" set the file encoding
set encoding=utf-8

" do not generate the bak file
set nobackup

" do not generate the bak file
set nowritebackup

" do not generate the swap file
set noswapfile

" set the tab size
set ts=4
set expandtab
set softtabstop=4
set shiftwidth=4
set noeb
set cursorline
set cursorcolumn

" 对json文件进行格式化，快捷键配置为F4
noremap <F4> :%!python -m json.tool<CR>

" 使用空格键，在normal模式下，替换viw快捷键，从而实现选中单词的效果
" map <space> viw

" 在insert模式下，删除一行，并进入insert模式
inoremap <c-d> <Esc>ddi




" vim-plug插件配置
" 执行 :PlugInstall 命令实现安装插件的操作
call plug#begin('~/.vim/plugged')
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'w0ng/vim-hybrid'
Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
call plug#end()

let g:ctrlp_map = '<c-p>'
