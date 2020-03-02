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









