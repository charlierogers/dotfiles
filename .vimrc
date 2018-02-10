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


" Editing
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-surround'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-commentary'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'vim-syntastic/syntastic'
Plugin 'zweifisch/pipe2eval'
Plugin 'alvan/vim-closetag'
Plugin 'elzr/vim-json'
Plugin 'pangloss/vim-javascript'
Plugin 'itspriddle/vim-jquery'
Plugin 'uplus/vim-clang-rename'

" Navigation
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'brookhong/cscope.vim'

" Version Control
Plugin 'tpope/vim-fugitive'
Plugin 'christoomey/vim-conflicted'

" Colorschemes
" Plugin 'flazz/vim-colorschemes'
" Plugin 'crusoexia/vim-monokai'
Plugin 'altercation/vim-colors-solarized'
" Plugin 'crusoexia/vim-dracula'
" Plugin 'dracula/vim'
Plugin 'jnurmine/Zenburn'

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

" Shortcut mapping for fast FixIt
map <F2> :YcmCompleter FixIt<CR>


" Vim-EasyTags
nnoremap <F5> :UpdateTags<cr>

" filenames for closetags
let g:closetag_filenames = "*.html,*.xml"

" Vim-Conflicted
" display version name of each split in the statusbar
set stl+=%{ConflictedVersion()}

" Shortcut to open NERDTree
nnoremap <leader>t :NERDTree<cr>

" Pipe2Eval config
let g:pipe2eval_map_key = '<Leader>e'

" COLORSCHEME Plugin Options

" Use 256 colors in terminal
set t_Co=256

" Solarized
" set background=dark
" let g:solarized_termcolors=256

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Cscope
nnoremap <leader>fa :call CscopeFindInteractive(expand('<cword>'))<CR>
nnoremap <leader>l :call ToggleLocationList()<CR>
" s: Find this C symbol
nnoremap  <leader>fs :call CscopeFind('s', expand('<cword>'))<CR>
nnoremap  <leader>vfs :vert scs find s <C-R>=expand("<cword>")<CR><CR>
" g: Find this definition
nnoremap  <leader>fg :call CscopeFind('g', expand('<cword>'))<CR>
nnoremap  <leader>vfg :vert scs find g <C-R>=expand("<cword>")<CR><CR>
" d: Find functions called by this function
nnoremap  <leader>fd :call CscopeFind('d', expand('<cword>'))<CR>
nnoremap  <leader>vfd :vert scs find d <C-R>=expand("<cword>")<CR><CR>
" c: Find functions calling this function
nnoremap  <leader>fc :call CscopeFind('c', expand('<cword>'))<CR>
nnoremap  <leader>vfc :vert scs find c <C-R>=expand("<cword>")<CR><CR>
" t: Find this text string
nnoremap  <leader>ft :call CscopeFind('t', expand('<cword>'))<CR>
nnoremap  <leader>vft :vert scs find t <C-R>=expand("<cword>")<CR><CR>
" e: Find this egrep pattern
nnoremap  <leader>fe :call CscopeFind('e', expand('<cword>'))<CR>
nnoremap  <leader>vfe :vert scs find e <C-R>=expand("<cword>")<CR><CR>
" f: Find this file
nnoremap  <leader>ff :call CscopeFind('f', expand('<cword>'))<CR>
nnoremap  <leader>vff :vert scs find f <C-R>=expand("<cfile>")<CR><CR>   
" i: Find files #including this file
nnoremap  <leader>fi :call CscopeFind('i', expand('<cword>'))<CR>
nnoremap  <leader>vfi :vert scs find i ^<C-R>=expand("<cfile>")<CR>$<CR> 


" ------------------- END VUNDLE ---------------------------





" Turn syntax highlighting on
let python_highlight_all=1
syntax enable

" Set color scheme 
colorscheme zenburn

" Setting indentation 
set autoindent
set smartindent
set shiftwidth=4
set tabstop=8
set softtabstop=0
set expandtab
set smarttab

" Open new split windows on right instead of left
set splitright


" Turning on line numbering
set number

" Toggling relative line numbers
nnoremap <leader>r :set relativenumber!<cr>

" Show filename in status bar
set laststatus=2
set statusline=%f "tail of the filename"

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
else 
    set clipboard=unnamed
endif

" Toggle between regular editing mode and past mode
set pastetoggle=<F3> 

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

" cppman for vim
autocmd FileType cpp set keywordprg=cppman

" Don't print headers when printing to pdf with :hardcopy command
set popt+=header:0

" Format JSON
nmap =j :%!python -m json.tool<CR>
