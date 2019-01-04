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
set encoding=utf8
set guifont=DroidSansMonoForPowerline\ Nerd\ Font:h11

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

" Save .swp/.swo files to a dif directory
set directory=$HOME/.vim/swapfiles//

" Allows yank to pbcopy
set clipboard=unnamed

" Enable mouse lol
set mouse=a

" Set mapleader to spacebar
let mapleader = "\<Space>"

" set the runtime path to include Plugin and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Plugin should install plugins
"call vundle#begin('~/some/path/here')

" let Plugin manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

Plugin 'tpope/vim-surround'
Plugin 'easymotion/vim-easymotion'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'sheerun/vim-polyglot'
Plugin 'pangloss/vim-javascript'
Plugin 'Shougo/neocomplete'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'mattn/emmet-vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'ryanoasis/vim-devicons'
Plugin 'vimwiki/vimwiki'
Plugin 'mxw/vim-jsx'
Plugin 'fatih/vim-go'
Plugin 'hashivim/vim-terraform'
Plugin 'w0rp/ale'

" Track the engine.
Plugin 'SirVer/ultisnips'
"
" " Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

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

