"去掉搜索高亮
noremap <silent><leader>/ :nohls<CR>
"代码折叠
nnoremap <space> za

map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

" Intend
nnoremap < <<
nnoremap > >>
vnoremap < <gv
vnoremap > >gv

" window
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" command
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" Plug
nnoremap <Leader>pi :PlugInstall<Cr>
nnoremap <Leader>pc :PlugClean<Cr>
nnoremap <Leader>pu :PlugUpdate<Cr>

" yapf
autocmd FileType python nnoremap <leader>= :0,$!yapf<CR>

" Vim-airline
map gn :bn<CR>
map gp :bp<CR>
nnoremap gd :bp<cr>:bd #<cr>

" NERDTree
map <C-t> :NERDTreeToggle<CR>

" Asyncomplete
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"
imap <c-space> <Plug>(asyncomplete_force_refresh)

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
let g:ctrlp_map = '<leader>p'
let g:ctrlp_cmd = 'CtrlP'
map <leader>f :CtrlPMRU<CR>

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

" auto-pairs
let g:AutoPairsShortcutBackInsert = "<M-i>"
