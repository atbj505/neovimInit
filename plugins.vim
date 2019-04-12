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
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'jistr/vim-nerdtree-tabs', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle' }
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
Plug 'vim-scripts/matchit.zip'
Plug 'Yggdroot/indentLine'
Plug 'Shougo/neco-syntax'
Plug 'terryma/vim-multiple-cursors'
Plug 'airblade/vim-rooter'
Plug 'tpope/vim-apathy'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
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
Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}
Plug 'Shougo/neopairs.vim'
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'zchee/deoplete-jedi'
Plug 'mbbill/undotree'
Plug 'sebastianmarkow/deoplete-rust'
Plug 'matze/vim-move'
Plug 'tpope/vim-rsi'
Plug 'benmills/vimux'
Plug 'jtdowney/vimux-cargo'
Plug 'benmills/vimux-golang'
Plug '907th/vim-auto-save'
Plug 'lfv89/vim-interestingwords'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()
