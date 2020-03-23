" show the line number
set number

" set colorscheme
colorscheme hybrid

" set background
set background=dark

" open the syntax on
syntax on

" press F2 to enter the paste pattern, press F2 again to quit paste pattern
set pastetoggle=<F2>

" high light search
" set hlsearch

" when in the insert mode, ', + w' will save the file's modification
let mapleader=','
inoremap <leader>w <Esc>:w<cr>

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

" ignore case when searching
set ignorecase

" set the tab size
set ts=4
set expandtab
set softtabstop=4
set shiftwidth=4
set noeb
set cursorline
set cursorcolumn

" json format shortcut
noremap <F4> :%!python -m json.tool<CR>

" use space to select word and enter the insert mode
" map <space> viw

" delete one line at insert mode and enter insert mode
" inoremap <c-d> <Esc>ddi


" vim-plug config
" execute install :PlugInstall 
call plug#begin('~/.vim/plugged')
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'w0ng/vim-hybrid'
Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf',{'dir':'~/.fzf','do':'./install --all'}
Plug 'junegunn/fzf.vim'
Plug 'brooth/far.vim'
Plug 'tpope/vim-commentary'

" Plug 'artur-shaik/vim-javacomplete2'

call plug#end()


" find the location of the file
nnoremap <leader>v :NERDTreeFind<cr>
" Change the nerd tree
nnoremap <leader>g :NERDTreeToggle<cr>


" use ctrlp to find files quickly
let g:ctrlp_map = '<c-p>'

" keymap for easy-motion
nmap ss <Plug>(easymotion-s2)

" java complete
" autocmd FileType java setlocal omnifunc=javacomplete#Complete



