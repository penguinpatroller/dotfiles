" Cameron Keybinds
set nocompatible
set showcmd
set splitbelow
set number relativenumber

" Turn off bell in vim
set vb
set t_vb=

syntax enable

" Dracula Theme (https://draculatheme.com/vim)
" packadd! dracula
" colorscheme dracula

" Leader Key
let mapleader = ","

" Normal Mode Remappings

" Insert new line and stay in normal mode
nnoremap <Leader>o o<Esc>0"_D
nnoremap <Leader>O O<Esc>0"_D

" hjkl to jkl;

noremap ; l
noremap l k
noremap k j
noremap j h

" Insert Mode Remappings
inoremap jj <Esc>


