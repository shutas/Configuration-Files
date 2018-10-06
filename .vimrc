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

" Plugin ending code
call vundle#end()            " required
filetype plugin indent on    " required


" Powerline beginning code
set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/

" Always show statusline
set laststatus=2
"
" " Use 256 colours (Use this setting only if your terminal supports 256
" colours)
set t_Co=256
"export TERM=xterm-256color

" NERDTree On
"autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nnoremap <C-w> :NERDTreeToggle<CR>  

" Vim ale settings
let g:ale_linters = {'py': ['pylint', 'pycodestyle', 'autopep8']}

" Other vim settings
set number relativenumber
colorscheme one
syntax on


