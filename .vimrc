" Searching
"   *******************************************************************
set hlsearch " highlight search
set incsearch " incremental search, search as you type
set ignorecase " Ignore case when searching
set smartcase " Ignore case when searching lowercase
set ffs=unix
"set number
set ruler
""    
""     
"" Colors
""     **********************************************************************
syntax on " syntax highlighting
set background=dark
""colorscheme ir_black
""colorscheme solarized
""      
""       
"" Status Line
""       *****************************************************************
"set showcmd
"set ruler " Show ruler
"set ch=2 " Make command line two lines high
""        
""         
"" Line Wrapping
""         ***************************************************************
"set nowrap
"set linebreak " Wrap at word
""          
"           
" Cursor highlights ***********************************************************
set cursorline
"set cursorcolumn
 
set t_Co=256
set backspace=indent,eol,start
":if &term == "xterm-color"
": set t_kb=^V
": fixdel
":endif

if has("autocmd")
aug vimrc
au!
" restore cursor position when the file has been read
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif
aug ENG
endif
