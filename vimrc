let mapleader = "\<Space>"

syntax on
set nocompatible

set cursorcolumn
set cursorline

set number
set encoding=utf-8
set tabstop=4
set shiftwidth=4
set backspace=indent,eol,start
set hlsearch

" leader keymap 
nnoremap <leader>b :Tagbar<CR>
nnoremap <leader>m :NERDTreeToggle<CR>

source $VIMRUNTIME/ftplugin/man.vim
set keywordprg=:Man

" Vim Plugins 
call plug#begin('~/.vim/plugged')

Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'itchyny/lightline.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'ycm-core/YouCompleteMe'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-startify'
Plug 'fatih/molokai'
Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'skywind3000/vim-terminal-help'
Plug 'majutsushi/tagbar'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-fugitive'

call plug#end()

set t_Co=256
let g:rehash256 = 1
let g:molokai_original = 1
colorscheme molokai


let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#show_tab_nr = 0
