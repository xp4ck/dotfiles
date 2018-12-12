set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'davidhalter/jedi-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'dracula/vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'majutsushi/tagbar'  
call vundle#end()
filetype on
filetype plugin on
filetype plugin indent on
syn on
set number
set ruler
set ttyfast
set backspace=indent,eol,start
set background=dark
colorscheme dracula
set t_Co=256
set nobackup
set nowritebackup
set noswapfile
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

