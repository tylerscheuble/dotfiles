"
" General
"

set number      " Show line numbers
set mouse=c     " Disable mouse
syntax on       " Use syntax higlighting
set splitbelow
set splitright

"
" Formatting
"

set expandtab
set autoindent
set tabstop=2
set softtabstop=2
set shiftwidth=2

"
" Plugins
"

call plug#begin('~/.vim/plugged') " Init vim-plug

Plug 'tpope/vim-sensible'
Plug 'tomasr/molokai'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'christoomey/vim-tmux-navigator'
Plug 'will133/vim-dirdiff'
Plug 'w0rp/ale'
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'rust-lang/rust.vim'
Plug 'purescript-contrib/purescript-vim'
Plug 'pangloss/vim-javascript'
Plug 'jceb/vim-orgmode'
Plug 'mattn/emmet-vim'
Plug 'nbouscal/vim-stylish-haskell'
Plug 'neovimhaskell/haskell-vim'
Plug 'Shougo/vimproc.vim'
Plug 'eagletmt/ghcmod-vim'
Plug 'udalov/kotlin-vim'
Plug 'lervag/vimtex'

call plug#end()

"
" Linting
"
let g:airline#extensions#ale#enabled = 1

"
" Cosmetic
"

set t_Co=256
set background=dark
colorscheme molokai

let g:airline_powerline_fonts = 1
let g:airline_theme = 'dark'

"
" Mappings
"

" Toggle nerdtree with C-n
nnoremap <C-n> :NERDTreeToggle<Cr>

"
" Language Specific
"

" Rust
let g:ale_linters = {'rust': ['cargo', 'rls']}
let g:ale_rust_rls_toolchain = 'nightly'

