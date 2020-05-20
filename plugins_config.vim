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
let g:airline_powerline_fonts = 1
let g:airline#extensions#bufferline#enabled = 1
let g:bufferline_echo = 0
" let g:bufferline_modified = '+'
" let g:bufferline_show_bufnr = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#branch#empty_message = ''
let g:airline#extensions#ale#enabled = 1
let airline#extensions#ale#error_symbol = 'E:'
let airline#extensions#ale#warning_symbol = 'W:'

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
let g:ale_linters = {'python': ['flake8'], 'rust': ['cargo'], 'go': ['gopls']}
let g:ale_rust_cargo_use_clippy = 1
let g:ale_rust_rustc_options = '--emit metadata'
let g:ale_go_gometalinter_options = '--fast --enable=staticcheck --enable=gosimple --enable=unused'
let g:ale_fix_on_save = 1
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'rust': ['rustfmt'],
\}

" indentLine
let g:indentLine_char='┆'
let g:indentLine_enabled = 1

" onedark
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
endif

if (has("termguicolors"))
set termguicolors
endif

" vim-choosewin
let g:choosewin_label = '123456789'
let g:choosewin_tablabel = ''

" undoTree
let g:undotree_SetFocusWhenToggle = 1

" vimwiki
let g:vimwiki_list = [{'path': '/Volumes/Transcend/vimwiki/'}]

" vim-sneak
let g:sneak#label = 1

" coc-explorer
let g:coc_explorer_global_presets = {
\   '.vim': {
\   },
\   'floating': {
\      'position': 'floating',
\   },
\   'floatingLeftside': {
\      'position': 'floating',
\      'floating-position': 'left-center',
\      'floating-width': 50,
\   },
\   'floatingRightside': {
\      'position': 'floating',
\      'floating-position': 'left-center',
\      'floating-width': 50,
\   },
\   'simplify': {
\     'file.child.template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]'
\   }
\ }
