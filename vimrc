set nocompatible              " be iMproved, required
filetype off                  " required

set tabstop=2
set shiftwidth=2
set expandtab
set colorcolumn=100

set ignorecase        " Makes search case-insensitive
set smartcase         " Makes caps required

set hlsearch          " highlight search matches
set incsearch         " incremental searching

set path=.,/usr/include,,**

" Allows yank to pbcopy
set clipboard=unnamed

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
Plugin 'tomtom/tcomment_vim'
Plugin 'elzr/vim-json'
Plugin 'easymotion/vim-easymotion' 
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'

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

"""""""""""""""""
" Syntax Checking Setup
""""""""""""""""
let g:syntastic_javascript_checkers = ['standard']
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_html_tidy_exec = 'tidy5'

"""""""""""""""""
" NERDTRee settings
"""""""""""""""""
let NERDTreeShowHidden=1
map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.DS_Store$']
