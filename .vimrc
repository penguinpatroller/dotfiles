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

" Change Leader Key
let mapleader = ","

" Normal Mode Remappings

nnoremap <Leader><Esc> :qa<CR>

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

" Visual Mode Remappings
vnoremap < <gv
vnoremap > >gv

" Terminal Mode Remappings

" Insert and Normal mode line highlighting
" autocmd InsertEnter * set cul
" autocmd InsertLeave * set nocul

" Explicitly set cursor style for Insert and Normal Mode
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" autocmd InsertEnter,InsertLeave * set cul!
set cursorline

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
set expandtab

" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
" set hlsearch

" Set the commands to save in history default number is 20.
set history=1000

" Set terminal size
" Tip: double tap ctrl+w to switch between editor and terminal window
set termwinsize=15x200

" Netrw native file explorer options
" Open netrw with key combo
" let g:netrw_banner = 0
" let g:netrw_liststyle = 3
" let g:netrw_browse_split = 4
" let g:netrw_altv = 1
" let g:netrw_winsize = 25
" let g:netrw_chgwin = -1

" Open file explorer on start
" augroup ProjectDrawer
"   autocmd!
"   autocmd VimEnter * :Vexplore
" augroup END
" Send ctrl+w to switch to editor on startup
" augroup ProjectDrawer
"   autocmd!
"   autocmd VimEnter * :Vexplore | wincmd w
" oaugroup END

" Autoload vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Add vim-plug plugin manager
call plug#begin()
  " On-demand loading
  Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
call plug#end()


" Set the working directory to the current file directory for NERDTree
autocmd BufEnter * lcd %:p:h

nnoremap <leader>ff :NERDTree<CR>
nnoremap <leader>n :NERDTreeFocus<CR>

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
