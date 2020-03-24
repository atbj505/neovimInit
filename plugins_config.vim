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

" defx
function! Root(path) abort
    return fnamemodify(a:path, ':t')
endfunction

call defx#custom#source('file', {
        \ 'root': 'Root',
        \})

call defx#custom#column('mark', {
        \ 'readonly_icon': '✗',
        \ 'selected_icon': '✓',
        \ })

call defx#custom#option('_', {
      \ 'columns': 'indent:git:icons:filename',
      \ 'winwidth': 30,
      \ 'split': 'vertical',
      \ 'direction': 'topleft',
      \ 'show_ignored_files': 0,
      \ 'buffer_name': '',
      \ 'toggle': 1,
      \ 'resume': 1
      \ })

let g:defx_icons_enable_syntax_highlight = 1
let g:defx_icons_column_length = 2
let g:defx_icons_directory_icon = ''
let g:defx_icons_mark_icon = '*'
let g:defx_icons_parent_icon = ''
let g:defx_icons_default_icon = ''
let g:defx_icons_directory_symlink_icon = ''
" Options below are applicable only when using "tree" feature
let g:defx_icons_root_opened_tree_icon = ''
let g:defx_icons_nested_opened_tree_icon = ''
let g:defx_icons_nested_closed_tree_icon = ''
autocmd BufEnter * if (winnr("$") == 1 && exists("b:defx")) | q | endif
let g:defx_git#indicators = {
		\ 'Modified'  : '+',
		\ 'Staged'    : '●',
		\ 'Untracked' : '?',
		\ 'Renamed'   : '➜',
		\ 'Unmerged'  : '═',
		\ 'Deleted'   : 'x',
		\ 'Unknown'   : '?'
		\ }

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

let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }

" vim-choosewin
let g:choosewin_label = '123456789'
let g:choosewin_tablabel = ''

" undoTree
let g:undotree_SetFocusWhenToggle = 1

" vimwiki
let g:vimwiki_list = [{'path': '/Volumes/Transcend/vimwiki/'}]

" indentLine
let g:indentLine_char='┆'
let g:indentLine_enabled = 1
