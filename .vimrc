set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
"Plugin 'L9'
Plugin 'scrooloose/nerdtree.git'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'tmhedberg/matchit'
Plugin 'majutsushi/tagbar'
Plugin 'SirVer/ultisnips'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'jpalardy/vim-slime'
Plugin 'honza/vim-snippets'
Plugin 'Valloric/YouCompleteMe'
Plugin 'marijnh/tern_for_vim'
call vundle#end()            " required
filetype plugin indent on    " required

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""General config "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set t_Co=256    " Ponemos que el modo de color sea 256
set number    " Show line numbers
set linebreak    " Break lines at word (requires Wrap lines)
set showbreak=+++   " Wrap-broken line prefix
set textwidth=100   " Line wrap (number of cols)
set showmatch    " Highlight matching brace
set clipboard=unnamed " Make tmux copy to mac os clipboard work in vim see https://evertpot.com/osx-tmux-vim-copy-paste-clipboard/

set hlsearch    " Highlight all search results
set smartcase    " Enable smart-case search
set ignorecase    " Always case-insensitive
set incsearch    " Searches for strings incrementally
set autoindent    " Auto-indent new lines
set shiftwidth=4    " Number of auto-indent spaces
set smartindent    " Enable smart-indent
set smarttab    " Enable smart-tabs
set softtabstop=4   " Number of spaces per Tab
set fileformats=unix,dos,mac
set list
set listchars=trail:.,extends:#,eol:¬
"" Charset options: always force to UTF-8 {{{
set fileencoding=utf-8
set termencoding=utf-8
set encoding=utf-8
set nocp incsearch "incremental search show pattern match as you type
set hlsearch " highlight search results

set timeoutlen=100

" Tabs
set smarttab
set expandtab
" size of a hard tabstop
set tabstop=4
" size of an "indent"
set shiftwidth=4
" a combination of spaces and tabs are used to simulate tab stops at a width
" other than the (hard)tabstop
 set softtabstop=4

" Visual
set showmatch  " Show matching brackets.
set mat=5  " Bracket blinking.
set novisualbell  " No blinking .
set noerrorbells  " No noise.
set laststatus=2  " Always show status line.

syntax  enable
set background=light
colorscheme solarized
if has("multi_byte")
    if &termencoding == ""
        let &termencoding = &encoding
    endif
    set encoding=utf-8
    setglobal fileencoding=utf-8
    "setglobal bomb
    set fileencodings=ucs-bom,utf-8,latin1
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""Advanced config"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set ruler

set undolevels=1000
set backspace=indent,eol,start
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""Mapping de teclas "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
imap kj <Esc>
let mapleader=" "

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l


" Leader mappings
map <leader>k :NERDTreeToggle<cr>
map <leader>b :b#<cr>
map <leader>d :bdelete<cr>

"let g:netrw_liststyle=3

"vmap <C-c> :w! ~/.sharedvim/.vimbuffer<CR>
"nmap <C-c> :.w! ~/.sharedvim/.vimbuffer<CR>
" paste from buffer
"map <C-y> :r ~/.sharedvim/.vimbuffer<CR>

"let g:ycm_key_list_select_completion = []

