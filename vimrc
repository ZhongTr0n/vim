"general settings
syntax enable
set encoding=utf-8
set tabstop=4

"Style
set number
set relativenumber
set softtabstop=4
set ruler
set rulerformat=%55(%{strftime('%a\ %b\ %e\ %I:%M\ %p')}\ %5l,%-6(%c%V%)\ %P%)
set novisualbell
set belloff=all
set autochdir
set showcmd " display incomplete commands

command R !python/%
set t_Co=256   " This is may or may not needed.
set nobackup                      " disable backup files...
set noswapfile                    " and swap files
set background=dark
set scrolloff=5
set t_Co=256   " This is may or may not needed.

"Whitespace
set tabstop=4   
set shiftwidth=2
set backspace=indent,eol,start
set list

" List chars    
set listchars=""                  " reset the listchars
set listchars=tab:▸\ ,eol:¬       " a tab should display as "▸ ", end of lines as "¬"
set listchars+=trail:.   

"Searching
set hlsearch                      " highlight matches...
nohlsearch                        " but don't highlight last search when reloading
set incsearch                     " incremental searching
set ignorecase                    " searches are case insensitive...
set smartcase                     " unless they contain at least one capital letter"
 
" Backup and status line
set laststatus=2
" }}}           
" VUNDLE{{{1    
 
" needed to run vundle (but i want this anyways)
set nocompatible
" vundle needs filtype plugins off
" i turn it on later
filetype plugin indent off
syntax off
" set the runtime path for vundle
set rtp+=~/.vim/bundle/Vundle.vim
" start vundle environment
call vundle#begin()

" PLUGINS
" list of plugins {{{2
" let Vundle manage Vundle (this is required)
"old: Plugin 'gmarik/Vundle.vim'
" to update the plugins run :PluginInstall! or :PluginUpdate
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'itchyny/lightline.vim'
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'morhetz/gruvbox' " Color scheme
" add plugins before this
 
call vundle#end()
 
" now (after vundle finished) it is save to turn filetype plugins on
filetype plugin indent on
syntax on

set background=dark
" colorscheme PaperColor
colorscheme gruvbox 
 
autocmd vimenter * NERDTree

"Remap keys
cmap <C-k> <Down>
cmap <C-j> <Up>

" Plugin settings
let NERDTreeShowBookmarks=1     " Open bookmarks in NERDTree on startup`
