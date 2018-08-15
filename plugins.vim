if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.config/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'bling/vim-bufferline'
Plug 'tpope/vim-fugitive'
Plug 'Raimondi/delimitMate'
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'scrooloose/nerdcommenter'
Plug 'godlygeek/tabular'
Plug 'majutsushi/tagbar'
Plug 'w0rp/ale'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tacahiroy/ctrlp-funky'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'mattn/emmet-vim'
Plug 'easymotion/vim-easymotion'
Plug 'yonchu/accelerated-smooth-scroll'
Plug 'ap/vim-css-color'
Plug 'vim-scripts/matchit.zip'
Plug 'Yggdroot/indentLine'
Plug 'ludovicchabant/vim-gutentags'
Plug 'Shougo/neco-syntax'
Plug 'tpope/vim-rsi'
Plug 'terryma/vim-multiple-cursors'
Plug 'airblade/vim-rooter'
Plug 'tpope/vim-apathy'
Plug 'guns/vim-sexp'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-sexp-mappings-for-regular-people'
Plug 'junegunn/vim-easy-align'
Plug 'MattesGroeger/vim-bookmarks'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'davidhalter/jedi-vim'
Plug 'mtth/scratch.vim'
Plug 'Glench/Vim-Jinja2-Syntax'
Plug 'jeetsukumaran/vim-pythonsense'
Plug 't9md/vim-choosewin'
Plug 'vimwiki/vimwiki'
Plug 'tbabej/taskwiki'
Plug 'powerman/vim-plugin-AnsiEsc'
Plug 'mklabs/split-term.vim'
Plug 'cocopon/vaffle.vim'
Plug 'andymass/vim-tradewinds'
Plug 'ambv/black'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi', { 'for': 'python' }
Plug 'mbbill/undotree'
Plug 'sebastianmarkow/deoplete-rust', { 'for': 'rust' }

call plug#end()
