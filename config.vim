" NeoVim
set background=dark
colorscheme onedark
set splitbelow
set splitright
let python_highlight_all=1
syntax on
set mouse-=a
set cursorline
set novisualbell
set noerrorbells
set ffs=unix,dos,mac
set encoding=utf8
set nofoldenable
set nocompatible
set timeoutlen=500
filetype plugin on
autocmd FileType apache setlocal commentstring=#\ %s

" JSON
let g:vim_json_syntax_conceal = 0

" Map Leader
let mapleader = "\<Space>"
let g:mapleader = "\<Space>"

set autoread
set ignorecase
set smartcase
set hlsearch
set incsearch
set showmatch
set noswapfile
set nobackup
set noshowmode
set tags=./tags;.tags
set nu
set ai
set smartindent
set autoindent
set nowrap
set scrolloff=5
set completeopt-=preview
set expandtab
set tabstop=4
set shiftwidth=4
set fileformat=unix

set hidden
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=yes

" share system clipboard
if has('clipboard')
        if has('unnamedplus')  " When possible use + register for copy-paste
            set clipboard=unnamed,unnamedplus
        else         " On mac and Windows, use * register for copy-paste
            set clipboard=unnamed
        endif
endif

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

" Delete white space at end of line
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite * :call DeleteTrailingWS()

" .sh file
function HeaderBash()
    call setline(1, "#!/usr/bin/env bash")
    normal G
    normal o
endf
autocmd bufnewfile *.sh call HeaderBash()
