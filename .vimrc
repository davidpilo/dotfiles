" Adding something for pathogen.vim to work we do this first
" it is better to do it before enabling syntax and indent.
" More info here:
" http://stackoverflow.com/questions/17630393/filetype-on-or-filetype-off
execute pathogen#infect()


"set nocompatible  " We don't want vi compatibility.
"colorscheme molokai
"set guifont=Monaco:h14
"set antialias
set nocp incsearch "incremental search show pattern match as you type
set hlsearch " highlight search results
set background=light
" colorscheme solarized


"" Charset options: always force to UTF-8 {{{
set fileencoding=utf-8
set termencoding=utf-8
set encoding=utf-8
"" }}}
" Editin options
set fileformats=unix,dos,mac
set list
set listchars=tab:▸\ ,trail:.,extends:#,eol:¬
" Add recently accessed projects menu (project plugin)
"set viminfo^=!

" MAPPINGS
" Cool little trick to switch buffers to last buffer with F2
:nnoremap <F2> :b#<Enter>
" Cool little trick to switch buffers with F5
:nnoremap <F5> :buffers<CR>:buffer<Space>
" Maps ESC to kj
:imap kj <Esc>
" Map Tagbar (requires exuberant ctags)
nmap <F8> :TagbarToggle<CR>

" CtrlP settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " Linux/MacOSX
let g:ctrlp_working_path_mode = 'ra' " When invoked, unless a starting directory is specified, CtrlP will set its local working directory according to this variable

 
syntax enable
set cf  " Enable error files & error jumping.
set clipboard+=unnamed  " Yanks go on clipboard instead.
set history=256  " Number of things to remember in history.
set autowrite  " Writes on make/shell commands
set ruler  " Ruler on
set nu  " Line numbers on
set timeoutlen=250  " Time to wait after ESC (default causes an annoying delay)
" colorscheme vividchalk  " Uncomment this to set a default theme
" Formatting (some of these are for coding in C and C++)
" set ts=4  " Tabs are 2 spaces
" set bs=2  " Backspace over everything in insert mode
" set shiftwidth=2  " Tabs under smart indent

set encoding=utf-8
filetype plugin indent on 
set autoindent

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
 
" gvim specific
set mousehide  " Hide mouse after chars typed
set mouse=a  " Mouse in all modes


" Adding this for Nerdtree to autoload
" autocmd vimenter * NERDTree

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Slime configuration to work with tmux
let g:slime_target = "tmux"
let g:slime_default_config = {"socket_name": "default", "target_pane": "1"}
