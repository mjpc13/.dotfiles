"Don't try to be vi compatible
set nocompatible

"Helps force plugin to load corectly when is turned back on below
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.dotfiles/.vim/plugins')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'https://github.com/airblade/vim-gitgutter.git'
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
" Put your non-Plugin stuff after this line



"turn on syntax highlighting
syntax on


"to fix the error 575 viminfo
let skip_defaults_vim=1
set viminfo=""

"TODO: Pick a leader key
"let mapleader = ","

"Security
set modelines=0

"Colorscheme
colorscheme koehler

"Show line numbers
set rnu

"Color number lines
"highlight LineNr ctermfg=grey ctermbg=black

"Show file stats
set ruler

"Blink cursor on error instead of beeping 
set visualbell

"Encoding
"set enconding=utf-8

"Whitespace
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

"Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> "use % to jump between paits
runtime! macros/matchit.vim


"Allow hidden buffers
set hidden

"Rendering
set ttyfast

"Status bar
set laststatus=2

"Last line
set showmode
set showcmd

"Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

"Reamp help key
inoremap <F1> <ESC>:set invfullsreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

"Remap esc key
imap kj <Esc>
vnoremap kj <Esc>
"onoremap kj <Esc>
inoremap kj <Esc>

imap jk <Esc>
vnoremap jk <Esc>
"onoremap jk <Esc>
inoremap jk <Esc>

"Formating
map <leader>q gqip

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
" " Uncomment this to enable by default:
" " set list " To enable by default
" " Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> " Toggle tabs and EOL


" Tabs
nnoremap <C-t> :tabnew<CR>
" tab movements
nnoremap <up> :tabr<cr>
nnoremap <down> :tabl<cr>
nnoremap <left> :tabp<cr>
nnoremap <right> :tabn<cr>



" SNIPPETS
" ------- CMAKE --------
" Read the Cmake cuda template
nnoremap ,gc :-1read $HOME/.vim/skeleton/ccmake<CR>3j3wcw

" -------- C++ ----------
"  Read the cpp template
nnoremap ,cpp :-1read $HOME/.vim/skeleton/cpp/cpp<CR>4ji

" While loop
nnoremap ,cwh :-1read $HOME/.vim/skeleton/cpp/while<CR>2wcw

"For loop
nnoremap ,cfor :-1read $HOME/.vim/skeleton/cpp/for<CR>fs

"Loop through array with pointers
nnoremap ,cforp :-1read $HOME/.vim/skeleton/cpp/pfor<CR>

"Timing the results
nnoremap ,ctime :-1read $HOME/.vim/skeleton/cpp/ctime<CR>4jf"lcw
nnoremap ,gtime :-1read $HOME/.vim/skeleton/cpp/gtime<CR>9jf(wcw

"-------- PYTHON -------
"Create empty python program
nnoremap ,py :-1read $HOME/.vim/skeleton/python/python<CR>37gg


"--------- LATEX --------
"Create a template tex file
nnoremap ,tex :-1read $HOME/.vim/skeleton/latex/tex<CR>60ggfIct\

"Insert an Image in latex
nnoremap ,img :-1read $HOME/.vim/skeleton/latex/img<CR>2jf/l

"Insert 2 images side by side
nnoremap ,2img :-1read $HOME/.vim/skeleton/latex/2img<CR>3jf/l

"Insert 3 images side by side
nnoremap ,3img :-1read $HOME/.vim/skeleton/latex/3img<CR>4jf/l

"Insert 3 images (large on top)
nnoremap ,3imgt :-1read $HOME/.vim/skeleton/latex/3imgt<CR>4jf/l

"Insert 3 images (large on bottom)
nnoremap ,3imgb :-1read $HOME/.vim/skeleton/latex/3imgb<CR>4jf/l

"Insert 4 images
nnoremap ,4img :-1read $HOME/.vim/skeleton/latex/4img<CR>4jf/l

