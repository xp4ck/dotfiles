set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'davidhalter/jedi-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'dracula/vim'
Plugin 'majutsushi/tagbar'  
call vundle#end()
filetype on
filetype plugin on
filetype plugin indent on
syntax on
set number
set mouse=a
set ruler
set ttyfast
set backspace=indent,eol,start
colorscheme dracula
set nobackup
set nowritebackup
set noswapfile
set ai
set expandtab
set hidden
set history=100
set hlsearch
set ignorecase
set incsearch
set nowrap
set scrolloff=4
set shiftwidth=4
set shortmess=atI
set showtabline=2
set sidescroll=8
set softtabstop=4
set smartcase
set smarttab
set tabpagemax=20
set tabstop=4
set t_Co=256
set wildmenu
set wildmode=list:longest
py3 << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  exec(open(activate_this).read(), {'__file__': activate_this})
EOF
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
"JS/HTML/CSS identation
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 
"Jedi-Vim
let g:jedi#use_splits_not_buffers = "left"
let g:jedi#goto_assignments_command = "<C-g>"
let g:jedi#goto_definitions_command = "<C-d>"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#auto_vim_configuration = 0
set completeopt=menuone,longest

"NERDtree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeDirArrows=0
let NERDTreeDirArrowExpandable='+'
let NERDTreeDirArrowCollapsible='~'

map <F8> :TagbarToggle<CR>

