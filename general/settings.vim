syntax enable

set iskeyword+=-				" dash separated words as text object
set formatoptions-=cro 			" disable next line commenting

set nowrap						" disabling wrapping
set encoding=utf-8				" utf-8 encoding
set fileencoding=utf-8			" encoding to be written
set cmdheight=2					" increasing height of cmd menu
set mouse=a						" enable mouse support
set ruler                       " Shows the cursor position
set splitbelow					" H split below
set splitright					" V split to the right
set t_Co=256					" 256 color support
set tabstop=4					" 4 spaces for a tab
set shiftwidth=4				" change the number of space characters inserted for indentation
set smarttab					" Make tabbing smarter
set expandtab					" tabs to spaces
set smartindent					" smart indentation
set autoindent					" auto indentation
set number relativenumber		" Line numbers
set noshowmode					" hide current mode
set nobackup					" 
set nowritebackup				" 
set clipboard+=unnamedplus		" enabling the clipboard support
set foldcolumn=4                " Folding abilities
set guifont=Jetbrains\ Mono\ Nerd\ Font

" Shortcut to save file
nmap <leader>w :w!<cr>

" Saving file as root
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!
