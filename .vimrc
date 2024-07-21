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

" Configurações do ALE para Python
let g:ale_linters = {
    \ 'python': ['flake8', 'mypy'],
    \}
let g:ale_fixers = {
    \ 'python': ['black'],
    \}
let g:ale_python_flake8_executable = 'flake8'
let g:ale_python_mypy_executable = 'mypy'

" Ativar uso do mouse
set mouse=a

" Ativar busca incremental
set incsearch

" Configurações do Vim-Plug para gerenciar plugins
call plug#begin('~/.vim/plugged')
Plug 'leviosa42/vim-github-theme'
Plug 'preservim/nerdtree'
Plug 'davidhalter/jedi-vim'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'
Plug 'lambdalisue/vim-pyenv'
Plug 'Valloric/YouCompleteMe'
Plug 'airblade/vim-gitgutter'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-commentary'
call plug#end()

let g:syntastic_python_checkers = ['flake8']
let g:python_highlight_all = 1

" Configurar esquema de cores
if filereadable(expand("~/.vim/plugged/vim-github-theme/colors/github_dark_tritanopia.vim"))
  colorscheme github_dark_tritanopia
else
  echo "Tema github_dark_tritanopia não encontrado!"
endif

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

" Configurações do NERDTree
autocmd vimenter * if !argc() | NERDTree | endif
map <F2> :NERDTreeToggle<CR>

" Suporte a folding
set foldmethod=indent
set foldlevel=99

" Navegação entre buffers
nnoremap <silent> <TAB> :bnext<CR>
nnoremap <silent> <S-TAB> :bprevious<CR>

" Configuração do YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

