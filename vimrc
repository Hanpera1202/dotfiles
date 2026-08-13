"-------------------------
" Start Vundle Settings.
"-------------------------
if !empty(glob('~/.vim/bundle/Vundle.vim'))
  set nocompatible
  filetype off

  set rtp+=~/.vim/bundle/Vundle.vim
  call vundle#begin()

  Plugin 'VundleVim/Vundle.vim'
  Plugin 'scrooloose/nerdtree'
  Plugin 'tomasr/molokai'

  call vundle#end()
  filetype plugin indent on
endif
"-------------------------
" End Vundle Settings.
"-------------------------

""""""""""""""""""""""""""""""
" Settings
""""""""""""""""""""""""""""""
set noswapfile
set ruler
set cmdheight=2
set laststatus=2
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
set title
set wildmenu
set showcmd
set browsedir=buffer
set smartcase
set hlsearch
set background=dark
set expandtab
set incsearch
set list
set listchars=tab:>\ ,extends:<
set number
set showmatch
set autoindent
set tabstop=2
set shiftwidth=2
set smarttab
set whichwrap=b,s,h,l,<,>,[,]
set backspace=indent,eol,start
set hidden
set colorcolumn=100

autocmd InsertLeave * set nopaste

syntax on
colorscheme molokai
highlight LineNr ctermfg=darkyellow
"""""""""""""""""""""""""""""

nnoremap <silent><C-e> :<C-u>NERDTreeToggle<CR>

nmap <silent>sl :<C-u>tabnext<CR>
nmap <silent>sh :<C-u>tabprevious<CR>
nnoremap <silent><C-l> :<C-u>wincmd l<CR>
nnoremap <silent><C-h> :<C-u>wincmd h<CR>
nnoremap <C-t> :<C-u>tabnew<CR>

set viminfo='50,\"3000,:0,n~/.viminfo
