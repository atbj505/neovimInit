" Vim-Airline
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = '▶'
let g:airline_left_alt_sep = '❯'
let g:airline_right_sep = '◀'
let g:airline_right_alt_sep = '❮'
let g:airline_theme="onedark"
let g:airline_solarized_bg='dark'
let g:airline#extensions#bufferline#enabled = 1
let g:bufferline_echo = 1
let g:bufferline_modified = '+'
let g:bufferline_show_bufnr = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#branch#empty_message = ''
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#ale#enabled = 1
let airline#extensions#ale#error_symbol = 'E:'
let airline#extensions#ale#warning_symbol = 'W:'

" NERDTree
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=30
let NERDTreeMinimalUI=1
let g:nerdtree_tabs_open_on_console_startup=1
let g:nerdtree_tabs_focus_on_files = 1
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
let NERDTreeHijackNetrw = 0
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

" asyncomplete
"let g:asyncomplete_auto_popup = 1
"let g:asyncomplete_remove_duplicates = 1
"set completeopt+=preview
"autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif
"if executable('pyls')
    "" pip install python-language-server
    "au User lsp_setup call lsp#register_server({
        "\ 'name': 'pyls',
        "\ 'cmd': {server_info->['pyls']},
        "\ 'whitelist': ['python'],
        "\ })
"endif

"if has('python3')
    "let g:UltiSnipsUsePythonVersion=3
    "let g:UltiSnipsEditSplit='vertical'
    "call asyncomplete#register_source(asyncomplete#sources#ultisnips#get_source_options({
        "\ 'name': 'ultisnips',
        "\ 'whitelist': ['*'],
        "\ 'completor': function('asyncomplete#sources#ultisnips#completor'),
        "\ }))
"endif

"au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#tags#get_source_options({
    "\ 'name': 'tags',
    "\ 'whitelist': ['c'],
    "\ 'completor': function('asyncomplete#sources#tags#completor'),
    "\ 'config': {
    "\    'max_file_size': 50000000,
    "\  },
    "\ }))

"call asyncomplete#register_source(asyncomplete#sources#buffer#get_source_options({
    "\ 'name': 'buffer',
    "\ 'whitelist': ['*'],
    "\ 'blacklist': ['go'],
    "\ 'completor': function('asyncomplete#sources#buffer#completor'),
    "\ }))

"au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#file#get_source_options({
    "\ 'name': 'file',
    "\ 'whitelist': ['*'],
    "\ 'priority': 10,
    "\ 'completor': function('asyncomplete#sources#file#completor')
    "\ }))

"au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#necosyntax#get_source_options({
    "\ 'name': 'necosyntax',
    "\ 'whitelist': ['*'],
    "\ 'completor': function('asyncomplete#sources#necosyntax#completor'),
    "\ }))

" tagbar
let g:tagbar_ctags_bin = '/usr/local/bin/ctags'
"let g:tagbar_autofocus = 1
let g:tagbar_sort = 0

" ale
let g:ale_sign_column_always = 1
let g:ale_sign_error = 'X'
let g:ale_sign_warning = '!'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_python_flake8_executable = 'python3'
let g:ale_python_flake8_options = '-m flake8'
let g:ale_python_flake8_use_global = 1
let g:ale_linters = {'python': ['flake8'], 'rust': ['cargo', 'rustc']}
let g:ale_rust_rustc_options = '--emit metadata'
let g:ale_fix_on_save = 1
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'rust': ['rustfmt'],
\}

" indentLine
let g:indentLine_char='┆'
let g:indentLine_enabled = 1

" ctrlp
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
    \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc)$',
    \ }
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1
let g:ctrlp_funky_syntax_highlight = 1
let g:ctrlp_funky_matchtype = 'path'
let g:ctrlp_extensions = ['funky']
" 替换grep为ag
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor
  " Use ag in CtrlP for listing files.
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  " Ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" onedark
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
endif

if (has("termguicolors"))
set termguicolors
endif

let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }

" gutentags
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']
let g:gutentags_ctags_tagfile = '.tags'
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags
if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
endif

" fzf
set rtp+=/usr/local/opt/fzf

" jedi
let g:jedi#completions_enabled = 0

" scratch
let g:scratch_autohide = 1
let g:scratch_insert_autohide = 1

" vim-choosewin
let g:choosewin_label = '123456789'
let g:choosewin_tablabel = ''

" black
autocmd BufWritePre *.py execute ':Black'

" deoplete
let g:deoplete#auto_complete_start_length = 1
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#sources#rust#racer_binary='/Users/yangqihui/.cargo/bin/racer'
let g:deoplete#sources#rust#rust_source_path='/Users/yangqihui/.rustup/toolchains/stable-x86_64-apple-darwin/lib/rustlib/src/rust/src'

" undoTree
let g:undotree_SetFocusWhenToggle = 1

" rsi
let g:rsi_no_meta = 1
