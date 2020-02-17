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
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'kristijanhusak/defx-icons'
Plug 'kristijanhusak/defx-git'
Plug 'scrooloose/nerdcommenter'
Plug 'w0rp/ale'
Plug 'Raimondi/delimitMate'
Plug 'easymotion/vim-easymotion'
Plug 'yonchu/accelerated-smooth-scroll'
Plug 'Yggdroot/indentLine'
Plug 'airblade/vim-rooter'
Plug 'tpope/vim-apathy'
Plug 'tpope/vim-surround'
Plug 'junegunn/vim-easy-align'
Plug 't9md/vim-choosewin'
Plug 'vimwiki/vimwiki'
Plug 'tbabej/taskwiki'
Plug 'mbbill/undotree'
Plug 'benmills/vimux'
Plug 'jtdowney/vimux-cargo'
Plug 'benmills/vimux-golang'
Plug '907th/vim-auto-save'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'liuchengxu/vim-which-key'
Plug 'honza/vim-snippets'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'ctrlpvim/ctrlp.vim'
Plug 'tacahiroy/ctrlp-funky'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
call plug#end()
