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
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'vim-airline/vim-airline'
Plugin 'joshdick/onedark.vim'
Plugin 'lifepillar/vim-solarized8'
Plugin 'dracula/vim'
Plugin 'wikitopian/hardmode'
Plugin 'morhetz/gruvbox'
Plugin 'chrisbra/vim-autoread'

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

"hybrid relative numbering
set number
set relativenumber

"show statusline always
set laststatus=2

"miscellanous stuff
"Turn on syntax highlighting:

"reload file automatically
":AutoRead

:syntax on
"For all files, set the format options, turn off C indentation, and finally set the comments option to the default.
:autocmd FileType *      set formatoptions=tcql nocindent comments&
"For all C and C++ files, set the formatoptions, turn on C indentation, and set the comments option.
:autocmd FileType c,cpp  set formatoptions=croql cindent comments=sr:/*,mb:*,ex:*/,://
"Add gnuplot filetypes
"au BufRead,BufNewFile *.gnu, *.plt, *.gpi, *.gih, *.gp, *.gnuplot set filetype=gnuplot
au BufRead,BufNewFile *.gnuplot set filetype=gnuplot
"Turn on automatic indentation.
:set autoindent
"Automatically write files as needed.
:set autowrite
"Define some nice abbreviations:
:ab #d #define
:ab #i #include
"Define some abbreviations to draw comments.
:ab #b /********************************************************
:ab #e ********************************************************/
:ab #l /*------------------------------------------------------*/
"Set the size of an indentation.
:set sw=4
"Have vim highlight the target of a search.
:set hlsearch
"Do incremental searches.
:set incsearch
"Set the width of text to 100 characters.
:set textwidth=100

"set colorscheme
"set termguicolors
"colorscheme onedark
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_italic='1'
let g:gruvbox_termcolors='256'
colorscheme gruvbox
"set background=light
"set background=dark
"colorscheme solarized8_high

"set airline theme
let g:airline_powerline_fonts = 1
let g:airline_theme='gruvbox'

"disable arrow keys
let g:HardMode_level = 'wannabe'
let g:HardMode_hardmodeMsg = "Don't use this!"
autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()

