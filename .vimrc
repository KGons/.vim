set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required

Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}
" Autocomplete
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'hari-rangarajan/CCTree'
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

" YCM to use exuberant ctags tag files
" command: Use RebuildCtags or ,t
" --fields=+l (lowercase l) is mandatory
let g:ycm_collect_identifiers_from_tags_files = 1

" Set tagsfile the tagfile in cwd
map <F7> :TagbarToggle<CR>
set tags=./tags,tags;
map tl g]
map tg <C-]>
map tp :tp<CR>
map tn :tn<CR>
map ts :ts<space>
map tb <C-t>
nnoremap ,t :!ctags -R --exclude=".svn build Build binaries Binaries out Out log Log gdb GDB" -h ".c.h" --fields=+l --langmap=c:.c.h<CR>
command! RebuildCtags !ctags -R --exclude='.svn build Build binaries Binaries out Out log Log gdb GDB' -h ".c.h" --fields=+l --langmap=c:.c.h
" command SearchDir !grep -nr --include "*.c" --include "*.h" "<line1>" .
" Buffer remap
nnoremap ,b :ls<CR>:b<Space>

" Grep current word in current dir
nnoremap ,s :exe 'grep ' . expand('<cword>') . ' *'<CR>

" Toggle NERDTree
map <F8> :NERDTreeToggle<CR>

" Resize windows vertically
nnoremap <C-F11> :vertical resize +5<CR>
nnoremap <C-F12> :vertical resize -5<CR>

" Clear highlighting on escape in normal mode
nnoremap <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[

" Line numbers
set relativenumber

" File encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

" use indentation of previous line
set autoindent
" use intelligent indentation for C
set smartindent
" configure tabwidth and insert spaces instead of tabs
set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces
set expandtab        " expand tabs to spaces
" wrap lines at 120 chars. 80 is somewaht antiquated with nowadays displays.
set textwidth=120

" turn syntax highlighting on
set t_Co=256
syntax on

" highlight matching braces
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */

" display incomplete commands
set showcmd

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

" Return to last edit position when opening files
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

" Auto read when a file is changed from the outside
set autoread

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l,[,]

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Sets how many lines of history VIM has to remember
set history=700

" Enables mouse
set mouse=a

" Auto copy text highlighted by mouse in Windows
set guioptions+=a

" Automatic removal of trailing whitespaces
autocmd BufWritePre * :%s/\s\+$//e

" Turn on the WiLd menu
set wildmenu
set wildmode=longest:list,full

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

