" general configuration

" options
set encoding=utf-8
set number
set backspace=indent,eol,start
set history=1000
set showcmd
set showmode
set gcr=a:blinkon0
set autoread
set laststatus=2
set splitright
set splitbelow
set noswapfile
set nobackup
set nowritebackup
filetype plugin on
filetype indent on

" syntax
syntax on
syntax enable
set t_Co=256
set background=dark

"Remove toolbar
if has("gui_running")
    "colorscheme Tomorrow-Night-Bright
    colorscheme beekai 
	set guioptions-=T
	set guioptions-=r
	nmap <silent> <C-Tab> :maca _cycleWindows:<CR>
	nmap <silent> <C-S-Tab> :maca _cycleWindowsBackwards:<CR>
	set balloondelay=100000 " Long balloon to avoir huge tooltip in ruby files
    set guifont=Consolas:h11:cANSI
endif

hi Normal ctermfg=252 ctermbg=none

set incsearch
set hlsearch

" indentation
set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab
set list listchars=tab:\ \ ,trail:·
set nowrap
set linebreak

" Some remapping
:inoremap jj <Esc>
let mapleader = ","
let g:mapleader = ","
nmap <silent> <c-n> :NERDTreeToggle<CR>

"Moving around windows (taken from Derek Wyatt)
noremap <silent> ,h :wincmd h<cr>
noremap <silent> ,j :wincmd j<cr>
noremap <silent> ,k :wincmd k<cr>
noremap <silent> ,l :wincmd l<cr>

" Indent with tab in visual mode
vnoremap <Tab> >gv|
vnoremap <S-Tab> <gv
