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
Plug 'dense-analysis/ale'
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
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'Konfekt/FastFold'
Plug 'tmhedberg/SimpylFold'
Plug 'dhruvasagar/vim-table-mode'
Plug 'cespare/vim-toml'

call plug#end()

set t_Co=256
set background=dark
colorscheme molokai

let g:airline_powerline_fonts = 1
let g:airline_theme = 'dark'

nnoremap <C-n> :NERDTreeToggle<Cr>
nnoremap <Space> za

let g:airline#extensions#ale#enabled = 1
let g:ale_linters = {}
let g:ale_linters['rust'] = ['cargo', 'rls']
let g:ale_rust_rls_toolchain = 'nightly'
let g:ale_linters['python'] = ['flake8']
let g:ale_linters['go'] = ['golint', 'go build']

" Ignore files in .gitignore with ctrlp
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

let g:SimpylFold_docstring_preview = 1

" For making insert mode visually different from normal mode
autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul
