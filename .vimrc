syntax enable

" BUFFER SWITCHING
map bb :bnext <CR>

" sane saving
map <C-s> :w <CR>

set number 	" include line number
" wrapping config
set showbreak=+++
set textwidth=100

set showmatch	" highlight start and end braces
" set virtualedit=all 	" free range cursor
set autoindent 	" auto-indent new lines

set ruler	" row and column info

set undolevels=1000	" number of undo levels
set cmdheight=2		" command line

" NERD Tree settings
autocmd vimenter * NERDTree	" automatically launch startup
map <C-n> :NERDTreeToggle <CR>	" map toggle to ctrl+n

" YCM settings
" let g:ycm_auto_trigger=enable

" Airline settings
let g:airline#extensions#tabline#enabled=1	"shows all buffers in Airline when using single tab mode

set encoding=utf-8

set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" ruby plugin for ruby stuff
Plugin 'vim-ruby/vim-ruby'

" autocomplete plugin
Plugin 'valloric/youcompleteme'

" tree plugin for tree view
Plugin 'scrooloose/nerdtree'

" git plugin to make stuff easier
" use :G or :Git instead of :!git
Plugin 'tpope/vim-fugitive'

" plugin for stylized status display
Plugin 'vim-airline/vim-airline'

" solarized coloscheme for simple color
Plugin 'altercation/vim-colors-solarized'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" color scheme
set background=dark
let g:soloarized_termcolors=256
colorscheme solarized

