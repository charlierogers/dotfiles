set nocompatible              " be iMproved, required

" -------------------- VUNDLE -------------------------

filetype off                  " required by Vundle

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
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-commentary'
Plugin 'crusoexia/vim-monokai'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'

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





" ------- Options for Plugins installed with Vundle --------------


" YouCompleteMe
" Set default path for .ycm_extra_conf.py file
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

let g:ycm_show_diagnostics_ui = 0

" Shortcut mapping for fast FixIt
map <F2> :YcmCompleter FixIt<CR>



" Vim-Monokai
set t_Co=256  " vim-monokai now only support 256 colours in terminal."


" Vim-EasyTags
nnoremap <F5> :UpdateTags<cr>


" ------------------- END VUNDLE ---------------------------





" Turn syntax highlighting on
syntax on

" Set color scheme to monokai
colorscheme monokai

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

" Toggling relative line numbers
nnoremap <leader>r :set relativenumber!<cr>

" Remaps changing from command mode from Esc to jj
inoremap jj <Esc>

" Scrolling with mouse
set mouse=a

" Remaps scrolling up and down (without cursor) to Space for down and
" comma for up
nnoremap <Space> <C-E>
nnoremap , <C-Y>

" move the current line down
nnoremap - ddp
" move the current line up
nnoremap _ ddkP


" Allows vim to read and write to both the * and + registers for system
" clipboard 
" Only works +clipboard and/or +xterm_clipboard
if has('unnamedplus')
    set clipboard=unnamed,unnamedplus
endif

" Toggling for colorcolumn at 80 characters
function! g:ToggleColorColumn()
    if &colorcolumn != ''
        setlocal colorcolumn&
    else
        highlight ColorColumn ctermbg=0*
        setlocal colorcolumn=80
    endif
endfunction
                       
nnoremap <silent> <leader>cc :call g:ToggleColorColumn()<CR>

" Change buffer switching to be tab-based
set switchbuf=usetab

