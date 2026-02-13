set nocompatible

call plug#begin()

" syntax
Plug 'sheerun/vim-polyglot'

" colorschemes
Plug 'jeffkreeftmeijer/vim-dim'
Plug 'noahfrederick/vim-noctu'

" editor
Plug 'editorconfig/editorconfig-vim'

" plugins
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'github/copilot.vim'

call plug#end()

colorscheme noctu

filetype plugin indent on
