"-------------------------
" Start Vundle Settings.
"-------------------------
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"call vundle#begin('~/some/path/here')

Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'scrooloose/nerdtree'
Plugin 'tomasr/molokai'
"Plugin 'christoomey/vim-tmux-navigator'
"Plugin 'leafgarland/typescript-vim'

"Plugin 'prabirshrestha/async.vim'
"Plugin 'prabirshrestha/asyncomplete.vim'
"Plugin 'prabirshrestha/asyncomplete-lsp.vim'
"Plugin 'prabirshrestha/vim-lsp'
"Plugin 'mattn/vim-lsp-settings'
"Plugin 'mattn/vim-lsp-icons'

"Plugin 'hrsh7th/vim-vsnip'
"Plugin 'hrsh7th/vim-vsnip-integ'
 
call vundle#end()
filetype plugin indent on
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
"set backupdir=$HOME/.vimbackup
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

" yank to clipboard for MAC
"set clipboard=unnamed
" Turn off paste mode when leaving insert
autocmd InsertLeave * set nopaste
" Update ctags file when to save file
"autocmd BufWritePost * call system("ctags -R")

autocmd Filetype java set makeprg=rm\ -f\ *.class;javac\ %
set errorformat=%A%f:%l:\ %m,%-Z%p^,%-C%.%#

syntax on
colorscheme molokai
highlight LineNr ctermfg=darkyellow
"""""""""""""""""""""""""""""

nnoremap <silent><C-e> :<C-u>NERDTreeToggle<CR>
 
nnoremap <silent>sl :<C-u>tabnext<CR>
nnoremap <silent>sh :<C-u>tabprevious<CR>
nnoremap <silent><C-l> :<C-u>wincmd l<CR>
nnoremap <silent><C-h> :<C-u>wincmd h<CR>
nnoremap <C-t> :<C-u>tabnew<CR>

"set viminfo='50,\"3000,:0,n~/.viminfo

runtime! config/plugins/*.vim

autocmd QuickFixCmdPost vimgrep cwindow
