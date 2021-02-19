set nocompatible              " be iMproved, required
filetype off                  " required

set tabstop=2
set shiftwidth=2
set expandtab
set colorcolumn=100
set number
syntax enable

" devicons
let g:webdevicons_enable=1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_airline_statusline = 1
let g:airline_powerline_fonts = 1
set encoding=utf8
set guifont=Fira\ Code:h12
"set guifont=Hack\ Regular\ Nerd\ Font\ Complete:h11

let g:jsx_ext_required = 0 " Allow JSX in normal JS files

" Neocomplete on start
let g:neocomplete#enable_at_startup = 1

" ALE
let g:ale_linters = {
\   'javascript': ['standard'],
\}
let g:airline#extensions#ale#enabled = 1
let g:ale_open_list = 1

set foldmethod=indent
set ignorecase        " Makes search case-insensitive
set smartcase         " Makes caps required
color jellybeans

set hlsearch          " highlight search matches
set incsearch         " incremental searching

set path=.,/usr/include,,**

" Ctrl p ignore
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" Save .swp/.swo files to a dif directory
set directory=$HOME/.vim/swapfiles//

" Allows yank to pbcopy
set clipboard=unnamed

" Enable mouse lol
set mouse=a

" gently highlights the line the main cursor is on
set cursorline

" Set mapleader to spacebar
let mapleader = "\<Space>"

call plug#begin()
" alternatively, pass a path where Plug should install plugins
"call plug('~/some/path/here')

Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'christoomey/vim-tmux-navigator'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'jelera/vim-javascript-syntax'
Plug 'sheerun/vim-polyglot'
Plug 'pangloss/vim-javascript'
"Plug 'Shougo/neocomplete'
Plug 'ntpeters/vim-better-whitespace'
Plug 'mattn/emmet-vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'rust-lang/rust.vim'
Plug 'vimwiki/vimwiki'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'fatih/vim-go'
Plug 'hashivim/vim-terraform'
Plug 'w0rp/ale'
Plug 'leafgarland/typescript-vim'
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Track the engine.
Plug 'SirVer/ultisnips'
"
" " Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

" All of your Plugins must be added before the following line
call plug#end()            " required
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

" "Syntastic settings
"let g:syntastic_javascript_checkers = ['standard']
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"" let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

"let g:syntastic_html_tidy_exec = 'tidy5'

"""""""""""""""""
" NERDTRee settings
"""""""""""""""""
let NERDTreeShowHidden=1
map <C-n> :NERDTreeToggle<CR>
nnoremap <leader>a :NERDTreeFind<cr>
let NERDTreeIgnore=['\.DS_Store$']

" json formatting
nmap =j :%!python -m json.tool<CR>

" UltiSnip settings
"
" " Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<C-w>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" golang
let g:go_version_warning = 0

