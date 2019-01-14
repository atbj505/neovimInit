runtime custom_function.vim

" 去掉搜索高亮
noremap <silent><leader>/ :nohls<CR>

" terminal
"nnoremap <Leader>ot :call OpenTerminal()<Cr>

map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>
inoremap <M-n> <Down>
inoremap <M-p> <Up>

" command
cnoremap <C-k> <Up>
cnoremap <C-j> <Down>

" Plug
nnoremap <Leader>pi :PlugInstall<Cr>
nnoremap <Leader>pc :PlugClean<Cr>
nnoremap <Leader>pu :PlugUpdate<Cr>

" yapf
"autocmd FileType python nnoremap <leader>= :0,$!yapf<CR>

" Split fast
nnoremap <leader>\ :vs<CR>
nnoremap <leader>- :sp<CR>

" Vim-airline
map gn :bn<CR>
map gp :bp<CR>
nnoremap gd :bp<cr>:bd #<cr>

" NERDTree
nnoremap <leader>nt :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>

" Asyncomplete
"inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
"inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
"inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"
"imap <c-space> <Plug>(asyncomplete_force_refresh)

" UltiSnips
let g:UltiSnipsExpandTrigger="<C-c>"

" tagbar
nnoremap <silent> <leader>tt :TagbarToggle<CR>

" Ale
nmap <Leader>s :ALEToggle<CR>
nmap <Leader>d :ALEDetail<CR>
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" isort
autocmd FileType python nnoremap <leader>is :!isort %<CR><CR>

" ctrlp
let g:ctrlp_map = '<leader>cp'
let g:ctrlp_cmd = 'CtrlP'
map <leader>cf :CtrlPMRU<CR>

" ctrlp-funky
nnoremap <Leader>fu :CtrlPFunky<Cr>
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>

" tabular
nmap <Leader>a& :Tabularize /&<CR>
vmap <Leader>a& :Tabularize /&<CR>
nmap <Leader>a= :Tabularize /^[^=]*\zs=<CR>
vmap <Leader>a= :Tabularize /^[^=]*\zs=<CR>
nmap <Leader>a=> :Tabularize /=><CR>
vmap <Leader>a=> :Tabularize /=><CR>
nmap <Leader>a: :Tabularize /:<CR>
vmap <Leader>a: :Tabularize /:<CR>
nmap <Leader>a:: :Tabularize /:\zs<CR>
vmap <Leader>a:: :Tabularize /:\zs<CR>
nmap <Leader>a, :Tabularize /,<CR>
vmap <Leader>a, :Tabularize /,<CR>
nmap <Leader>a,, :Tabularize /,\zs<CR>
vmap <Leader>a,, :Tabularize /,\zs<CR>
nmap <Leader>a<Bar> :Tabularize /<Bar><CR>
vmap <Leader>a<Bar> :Tabularize /<Bar><CR>

" JSON
nmap <leader>jt <Esc>:%!python -m json.tool<CR><Esc>:set filetype=json<CR>

" vim-easy-align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" fzf
nnoremap <silent> <Leader>ff :Files<CR>
nnoremap <silent> <Leader>fb :Buffers<CR>
command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>,
  \                 <bang>0 ? fzf#vim#with_preview('up:60%')
  \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
  \                 <bang>0)
nnoremap <silent> <Leader>fa :Ag<CR>

" vim-choosewin
nmap - <Plug>(choosewin)

" Term
nnoremap <Leader>ot :10Term<Cr>

" deoplete
"imap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
"imap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"
imap <expr><TAB> pumvisible() ? "\<C-n>" : (neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>")
imap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"
imap <expr><CR> pumvisible() ? deoplete#mappings#close_popup() : "\<CR>"
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>      <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" undotree
nnoremap <Leader>ut :UndotreeToggle<cr>

" rustfmt
autocmd FileType rust nnoremap <leader>= <ESC>:!cargo +nightly fmt<CR><ESC>

" vimux
map <Leader>vp :VimuxPromptCommand<CR>
map <Leader>vl :VimuxRunLastCommand<CR>
" vimux-cargo
map <Leader>rc :wa<CR> :CargoRun<CR>
map <Leader>ra :wa<CR> :CargoTestAll<CR>
map <Leader>rb :wa<CR> :CargoUnitTestCurrentFile<CR>
map <Leader>rf :wa<CR> :CargoUnitTestFocused<CR>
