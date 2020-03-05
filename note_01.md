# Vim
Here is the vim note for myself.

## Common Operation

**:vs + [file]** : vertical split the screen, and there will be two windows on the screen[ the file is optional ]

**:sp + [file]** : horizontal split the screen, the same as vs [ the file is optional ] 

**:% s/foo/bar/g** : replace the foo to the bar, g mean global, % means which line to which line, eg: 

**:10,20 s/hello/hi/g** : means replace line 10 to line 20's content hello to hi.

---

**Visual mode: to select block in the text.**

**v** : normal select

**V** : select by line

**ctrl + v** : select by block

**u** : in visual mode, change the selected characters to lower case

**U** : in visual mode, change the selected characters to upper case

---

**Modify Operation: operate words**

**ctrl + h** :  delete last character when inputing

**ctrl + w** : delete last word when inputing

**ctrl + u** : delete current line when inputing

**u** : undo the last operation

**ctrl + r** : reundo the last operation

---

The following three operations also work in **terminal command line**.

Other fast operation in **command line**:

**ctrl + a** : move to the head of the line

**ctrl + e** : move to the end of the line

**ctrl + f** : move one character forward

**ctrl + b** : move one character backward

---

**gi** : jump to the last modified position

---

**Move pattern : move to the specific position quickly** 

**w :** move to the next word's start 

**e :** move to the next word's end

**b :** move back to the last word's start

**f + character** : move to current line's specific character, we can use **";"** step to the next matched position, and use **","** jump back to the former position

**t + character** : move to current line's the former position of matched character. **";"** and **","** also works

**)** : move to the next sentence, ( move back to the former sentence

**}** : move to the next paragraph, { move back to the former paragraph

**ctrl + o** : move back to the former position

**H/M/L** : move the cursor to the screeen's head/middle/lower

**ctrl + f** : move to the next page

**ctrl + b** : move back to the former page

**ctrl + u** : move back to the former **half** page

**zz** : adjust the current line to the middle of page

---

**Modify pattern : modify the text content quickly**

**x** : delete a character, and move back a character position

**r** : replace a character, then enter the normal pattern

**c** : change, delete and enter the insert pattern

**s** : substitute  a character, delete current character and enter the insert pattern

**Search and substitude pattern : search and substitute matched content quickly**

**/"content"** : search the content from current file, we can use **"n"** to match next, use **"b"** to match former

**:[range] s/{pattern}/{string}/flags** :  

​		**range** means which line starts and ends; 

​		**s** means substitute; pattern means which pattern content should be substitute; 

​		**string** means what kind of content should be substituted;

​		**flags** means in the range content, the operation's handling flgs [eg: **g(global)** c(confirm) **n(number)**]

​		If we want to count the matched content times, we can use the **n** flags. Eg: input **:% s/hello//n**

---

**Multi-file operation : modify multi-file in vim**

**Buffer** : When open a file by vim, every modification in this file will be saved in the buffer, only execute **:w** command, the buffer content will flush to the disk

**Window** : can use **vs** or **sp** to split the window, the splitter part is one of the window

**:e + file** : add the file to buffer, and jump to the file

**:ls** : show the current buffer of vim, if execute the :e operation, we can find the new buffer in the list

**:b number** : jump to the number's buffer [ use to switch buffer ]

**:bpre** : move to the previous buffer

**:bnext** : move to the next buffer

**:bfirst** : move to the first buffer

**:blast** : move to the last buffer

**ctrl + w + h/j/k/l** : move the cursor to different window

**ctrl + w H/J/K/L** : change the position of the sub window

**n + ctrl + w + _** :  change current window's height as n lines

**n + ctrl + w + |** :  change current windows's width as n columns

---

**Text object :  includes word, sentence, paragraph**

**ci"** : change the content in ""

**ci)** : change the content in ()

**ci{** : change the content in {}

**vi"** : select the content in ""

**vi)** : select the content in ()

**vi{** : select the content in {}

---

**Copy, paste and register**

**y(yank) and p(put)** : copy and paste

**d and p** : cut and paste

**:set autoindent** : autoindent will auto indent the code when paste it

**:set paste** : when paste code, the autoindent will mixture the code style, we can use set paste to avoid auto indent the code

**:set nopaste** : if you want to use autoindent again, input this command to recover autoindent

Vim's copy paste operation is operating in registry, it's different from other editor.

By default, when we use **d** or **y** the content, the content was put in the **unnamed register**, the unnamed register's name is "".

**"ayy** : put current line's content to register a

**"byy** : put current line's content to register b

**:reg a** : check the content in register a

**"ap** : paste the content in register a

**"bp** : paste the content in register b

**"+** is the system clipboard register, we can use system clipboard to copy or cut content in system's different files.

**"+y** : copy the content to system register

**"+p** : paste the content to vim

---

**Macro : A set of operations. We can record a macro and replay it in multi-part text.**

**q {register}** : start record a macro into specific register, when you want to quit record, you can stop it by tap q

**@{register}** : execute the defined macro

**:normal @{register}** : batch execute the macro command in selected part

There is another method to append "" to the head and end of the line:

:normal I"   : select block and insert " at the head of the line

:noraml A"  : select block and append " at the end of the line

---

**Code completion : complete the code**

**ctrl + p** : show the prompt of code

**ctrl + n** : select next prompt 

**ctrl + x + f** :  show the file path prompt, use ctrl + p to move previous, use ctrl + n move forward

**:r! echo %** : add the file's name to text

**:r! echo %:p** : add the file's absolutely path to the text

---

**Change theme**

**:colorscheme** : show current vim's color scheme  

**:colorscheme ctrl + d** : show all the color scheme

**:colorscheme + {scheme}** : change color scheme to scheme

All the color scheme file are located in the **~/.vim/colors**, if you want to add new color scheme to vim, you can download **scheme.vim** file from [github](https://www.github.com/) and move to ~/.vim/colors dir.

---

**Vim config**

Vim's config file is **~/.vimrc**

We can configure self-defined keymap :

```shell
let mapleader=','              " define a leader
inoremap <leader>w <Esc>:w<cr> " inoremap: insert mode no recursive map
															 " leader key + w will makes the function as Esc :w
```

**Vim key mapping**

**imap** : insert mode map

**nmap** :  normal mode map

**vmap** :  visual mode map

**Eg**: :imap \<c-d> \<Esc>ddi    : in insert mode, map the ctrl + d to Esc + dd + i

**nnoremap/vnoremap/inoremap** : no represents no; re represents recursive

In a word, we should use noremap all the time to avoid strange error

---

**Vim plugin** : there're many plugin management tools, like vim-plug, Vundle, Pathogen, Dein.Vim, volt etc.

We use vim-plug as the management tool, you can download the vim-plug in GitHub: https://github.com/junegunn/vim-plug.

In Unix/Linux, we can use the following shell:

```shell
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

In windows, we can use the following batch:

```batch
md ~\vimfiles\autoload
$uri = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
(New-Object Net.WebClient).DownloadFile(
  $uri,
  $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath(
    "~\vimfiles\autoload\plug.vim"
  )
)
```

The vim-plug example file:

```shell
" vim-plug config
" execute :PlugInstall (use command to install plugins)
call plug#begin('~/.vim/plugged')

" you can add plugins here, eg:
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

call plug#end()
```

**:source ~/.vimrc** : flush the vimrc file without quiting the vim

**:PlugInstall** : install the new added plug in vim-plug

We can use [vimawesome](https://vimawesome.com) to find the plug we are interested. 

---

**NerdTree** : we can use nerd tree to find files quickly, and jump to the target file easily.

**:NERDTree** : show the file tree of current directory 

Because we've defined the "," as leader, so we can defined some keymap for nerd tree:

```shell
" find the location of the file
nnoremap <leader>v :NERDTReeFind<cr>
" Change the nerd tree
nnoremap <leader>g :NERDTreeToggle<cr>
```

---

**ctrlp** : find file quickly in vim, can find file from the current root directory

Use following keymap config in ~/.vimrc, we can find file in vim via **ctrl + p** :

```shell
" use ctrlp to find files quickly
let g:ctrlp_map = '<c-p>'
```

We can use ctrlp combined with NERDTree to find file and locate file very fast.

---

**easy-motion** : move the location we wanted in screen.

We should define the shortcut keymap for easy-motion:

```shell
nmap ss <Plug>(easymotion-s2)
```

It's very functional ~

---

**Vim-surround** : delete, change, add paired content.

**ds** : delete a surrounding

**cs** : change a surrounding

**ys** : you add a surrounding, eg: ysiw" means add " around the word

---

**fzf.vim : fuzzy file** to find content fuzzily

**Files [PATH]** : find file fuzzily

**Ag [PATTERN]** : find string fuzzily

---

**far.vim** : batch search and replace

**:Far foo bar \*\*/*.py** : replace the foo to bar in the file of *.py

**:Fardo** : execute the replacement

---

**vim-commentary** : comment plugin

**gc** : comment or uncomment

---



















