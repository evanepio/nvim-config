set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

set nocompatible

call plug#begin('~/.local/share/nvim/plugged')

" git integration
Plug 'tpope/vim-fugitive'

" Fancy UI
Plug 'vim-airline/vim-airline'

" Misc programming support
Plug 'sheerun/vim-polyglot'

" File browsing
Plug 'scrooloose/nerdtree'

" Fuzzy finding by file name
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Search in files
Plug 'mileszs/ack.vim'

" Language Server Client
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

call plug#end()

" Use Silver Searcher if available
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" Run filetype plugin to activate more settings for specific filetypes
filetype plugin on

" have a tabline showing all opened files, sorta
let g:airline#extensions#tabline#enabled=1

" Set Python3 virtual environment to use - create new venv just for nvim use
let g:python3_host_prog = '/Users/evanporter/venvs/py3nvim/bin/python'

" Automatically start language servers.
let g:LanguageClient_serverCommands = {
    \ 'python': ['~/venvs/py3nvim/bin/pyls'],
    \ }
let g:LanguageClient_autoStart = 1

" Show current line number and show other lines as how many away from current
" line. Useful for vim line moving.
set number
set relativenumber

" make the line the cursor is on much more obvious
set cursorline

set laststatus=2

set modelines=0

" Allow navigating away from unsaved buffers and Language Server refactoring
" operations like rename
set hidden

set autoindent

set showmode

set showcmd

" Remap Leader key
let mapleader = ","

nnoremap <leader>c :e ~/.config/nvim/init.vim<CR>
nnoremap <leader>r :so $MYVIMRC<CR>:echom "Refreshed!"<CR>
nnoremap <silent><space> :NERDTreeToggle<CR>
nnoremap <leader>o :Files<cr>
nnoremap <leader>f :Ag<cr>
nnoremap ; :

nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
nnoremap <leader>2 :call LanguageClient_textDocument_rename()<CR>

nnoremap <leader>p :pc<CR>
