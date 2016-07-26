set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Put new plugin commands here
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo

Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line")



" Turn syntax highlighting on
syntax on


" Setting indentation 
set autoindent
set smartindent
set shiftwidth=4
set tabstop=8
set softtabstop=0
set expandtab
set smarttab


" Turning on line numbering
set number

" Setting up autocomplete for braces
noremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}}}}}}

" Remaps changing from command mode from Esc to jj
inoremap jj <Esc>

" Scrolling with mouse
set mouse=a

" Remaps scrolling up and down (without cursor) to Space for down and
" comma for up
map <Space> <C-E>
map , <C-Y>

" Set color scheme to desert
color desert 

" Allows vim to read and write to both the * and + registers for system
" clipboard 
" Only works with vim-gtk or vim-gnome
if has('unnamedplus')
    set clipboard=unnamed,unnamedplus
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Options for YouCompleteMe plugin
" Set default path for .ycm_extra_conf.py file
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
