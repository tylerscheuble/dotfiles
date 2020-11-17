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
" Plug 'purescript-contrib/purescript-vim'
Plug 'pangloss/vim-javascript'
" Plug 'jceb/vim-orgmode'
" Plug 'mattn/emmet-vim'
" Plug 'nbouscal/vim-stylish-haskell'
" Plug 'neovimhaskell/haskell-vim'
" Plug 'Shougo/vimproc.vim'
" Plug 'eagletmt/ghcmod-vim'
" Plug 'udalov/kotlin-vim'
" Plug 'dhruvasagar/vim-table-mode'
Plug 'lifepillar/vim-solarized8'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plug 'Konfekt/FastFold'
Plug 'tmhedberg/SimpylFold'
Plug 'cespare/vim-toml'
Plug 'jpalardy/vim-slime'
Plug 'lepture/vim-jinja'
Plug 'dag/vim-fish'
Plug 'liuchengxu/vim-which-key'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'deoplete-plugins/deoplete-jedi'

" Plug 'davidhalter/jedi-vim'

call plug#end()

let g:deoplete#enable_at_startup = 1

let &t_8f = '\<Esc>[38;2;%lu;%lu;%lum'
let &t_8b = '\<Esc>[48;2;%lu;%lu;%lum'
set t_Co=256
set termguicolors
set background=light
colorscheme solarized8

" Configure semshi to use solarized light colors (the defaults look bad on
" light themes).
function CustomSemshiHighlights()
  hi semshiGlobal          guifg=#b58900
  hi semshiImported        guifg=#b58900 gui=bold
  hi semshiBuiltin         guifg=#b58900 gui=italic

  hi semshiParameter       guifg=#6c71c4
  hi semshiParameterUnused guifg=#6c71c4 gui=italic

  hi semshiLocal           guifg=#2aa198
  hi semshiFree            guifg=#2aa198

  hi semshiAttribute       guifg=#6c71c4
  hi semshiSelf            guifg=#2aa198
  hi semshiSelected        guifg=#ffffff guibg=#6c71c4

  hi semshiUnresolved      guifg=#dc322f gui=underline
  hi semshiErrorSign       guifg=#fdf6e3 guibg=#dc322f
  hi semshiErrorChar       guifg=#fdf6e3 guibg=#dc322f

endfunction
autocmd FileType python call CustomSemshiHighlights()

let g:airline_powerline_fonts = 1
let g:airline_theme = 'light'

let g:slime_target = 'tmux'
let g:slime_default_config = {'socket_name': get(split($TMUX, ','), 0), 'target_pane': ':.2'}

nnoremap <C-n> :NERDTreeToggle<Cr>
nnoremap ; za
noremap <silent><esc> <esc>:noh<CR><esc>


" Linting and formatting configuration
let g:airline#extensions#ale#enabled = 1
let g:ale_linters = {}
let g:ale_fixers = {}
let g:ale_fix_on_save = 1

let g:ale_fixers['*'] = ['remove_trailing_lines', 'trim_whitespace']

let g:ale_linters['rust'] = ['cargo', 'rls']
let g:ale_rust_rls_toolchain = 'nightly'

let g:ale_linters['python'] = ['flake8', 'mypy']
let g:ale_fixers['python'] = ['black', 'isort']

let g:ale_linters['go'] = ['golint', 'go build']


let mapleader = ' '
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
set timeoutlen=250

" Ignore files in .gitignore with ctrlp
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

let g:SimpylFold_docstring_preview = 1

" For making insert mode visually different from normal mode
autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul
