if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.config/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'sheerun/vim-polyglot'
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
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mhinz/vim-startify'
Plug 'sebdah/vim-delve'
Plug 'honza/vim-snippets'

call plug#end()
