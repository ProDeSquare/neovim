if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
	" Plug 'ayu-theme/ayu-vim'
	Plug 'arcticicestudio/nord-vim'
	Plug 'joshdick/onedark.vim'
	Plug 'mhinz/vim-startify'
	Plug 'PotatoesMaster/i3-vim-syntax'
	Plug 'ap/vim-css-color'
	Plug 'maxmellon/vim-jsx-pretty'
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-commentary'
	Plug 'tpope/vim-sleuth'
	Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
	Plug 'tpope/vim-fugitive'
	Plug 'alvan/vim-closetag'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'ryanoasis/vim-devicons'
	Plug 'vim-airline/vim-airline'
	Plug 'scrooloose/nerdtree'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'junegunn/goyo.vim'
	Plug 'neomake/neomake'
	Plug 'honza/vim-snippets'
	Plug 'mattn/emmet-vim'
call plug#end()

autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
