set nocompatible              " be iMproved, required
filetype off                  " required


" Plugin beginning code
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle plugin settings - Add Plugins here
Plugin 'gmarik/Vundle.vim'
Plugin 'rakr/vim-one'
Plugin 'scrooloose/nerdtree.git'
Plugin 'w0rp/ale'
Plugin 'itchyny/lightline.vim'
Plugin 'valloric/youcompleteme'

" Plugin ending code
call vundle#end()            " required
filetype plugin indent on    " required


" Powerline Settings
"set rtp+=/usr/local/lib/python3.7/site-packages/powerline/bindings/vim
"set laststatus=2
"set t_Co=256


" Lightline Settings
set laststatus=2
if !has('gui_running')
  set t_Co=256
endif
set noshowmode
let g:lightline = {'colorscheme': 'one',}


" NERDTree settings
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nnoremap <C-w> :NERDTreeToggle<CR>


" Vim ALE settings
let g:ale_linters = {'py': ['pylint', 'pycodestyle', 'autopep8'], 'sh': ['shellcheck']}


" Other vim settings
set number relativenumber
set backspace=indent,eol,start
colorscheme one
syntax on
set tabstop=4
set background=dark
