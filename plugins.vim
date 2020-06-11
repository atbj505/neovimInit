if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.config/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'bling/vim-bufferline'
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'w0rp/ale'
Plug 'yonchu/accelerated-smooth-scroll'
Plug 'justinmk/vim-sneak'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-apathy'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-rsi'
Plug 'junegunn/vim-easy-align'
Plug 't9md/vim-choosewin'
Plug 'mbbill/undotree'
Plug 'liuchengxu/vim-which-key'
Plug 'honza/vim-snippets'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mhinz/vim-startify'

call plug#end()
