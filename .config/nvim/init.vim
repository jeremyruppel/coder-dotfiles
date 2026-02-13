set number
set cursorline
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smartindent
set nocompatible
set list
set listchars=tab:▸\ ,eol:¬
set colorcolumn=80

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

" BEGIN coc-biome
augroup Biome
  autocmd!
  autocmd BufWritePre *.ts,*.tsx,*.js,*.json :call CocAction('runCommand', 'editor.action.formatDocument')
augroup end
" END coc-biome
