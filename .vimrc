" Mostrar números de linha
set number

" Configurações de indentação
set shiftwidth=4
set tabstop=4
set expandtab

" Ativar detecção de tipo de arquivo e plugins
filetype on
filetype plugin on
filetype indent on

" Ativar realce de sintaxe
syntax enable

" Mostrar título da janela
set title

" Ativar uso do mouse
set mouse=a

" Ativar busca incremental
set incsearch

" Suporte a folding
set foldmethod=indent
set foldlevel=99

" Melhorias adicionais
set nocompatible
set nobackup
set scrolloff=10
set nowrap
set ignorecase
set smartcase
set showcmd
set showmode
set showmatch

" Configurações do Vim-Plug para gerenciar plugins
call plug#begin('~/.vim/plugged')
Plug 'leviosa42/vim-github-theme'
Plug 'preservim/nerdtree'
Plug 'davidhalter/jedi-vim'
call plug#end()

" Configurar esquema de cores
if filereadable(expand("~/.vim/plugged/vim-github-theme/colors/github_dark_tritanopia.vim"))
  colorscheme github_dark_tritanopia
else
  echo "Tema github_dark_tritanopia não encontrado!"
endif

" Configurações do NERDTree
autocmd vimenter * if !argc() | NERDTree | endif
map <F2> :NERDTreeToggle<CR>

" Desativar a criação de arquivos .swp
set noswapfile

let g:ale_linters = {
\   'python': ['flake8', 'bandit'],
\}

" Python """"""""""""""""""""""""""""""""""""""""""""
let g:ale_python_flake8_options = '--max-line-length=100 --extend-ignore=E203'

let g:ale_fixers = {
\   '*': ['trim_whitespace'],
\   'python': ['black', 'isort'],
\}

 let g:ale_python_black_options = '--line-length 100'
 let g:ale_python_isort_options = '--profile black -l 100'

 nnoremap tp :!python %<cr>
 
