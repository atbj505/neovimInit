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
filetype plugin on

" JSON
let g:vim_json_syntax_conceal = 0

" Map Leader
let mapleader = " "
let g:mapleader = " "

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
set nowrap
set scrolloff=5
set completeopt-=preview
set expandtab
set tabstop=4
set shiftwidth=4
set fileformat=unix

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

if exists("$VIRTUAL_ENV")
    let g:python3_host_prog=substitute(system("which -a python3 | head -n2 | tail -n1"), "\n", '', 'g')
else
    let g:python3_host_prog=substitute(system("which python3"), "\n", '', 'g')
endif

" 自动保存
au FocusLost * silent! up " vim 窗口失去焦点时保存
au BufLeave * silent! up " vim buffer 切换时自动保存

" Auto add head info
" .py file into add header
function HeaderPython()
    call setline(1, "#!/usr/bin/env python")
    call append(1, "# -*- coding: utf-8 -*-")
    normal G
    normal o
endf
autocmd bufnewfile *.py call HeaderPython()

" .sh file
function HeaderBash()
    call setline(1, "#!/usr/bin/env bash")
    normal G
    normal o
endf
autocmd bufnewfile *.sh call HeaderBash()

