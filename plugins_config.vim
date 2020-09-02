" Vim-Airline
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = ' '
let g:airline_left_alt_sep = '|'
let g:airline_right_sep = ' '
let g:airline_right_alt_sep = '|'
let g:airline_theme="onedark"
let g:airline_solarized_bg='dark'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#branch#empty_message = ''
let g:airline#extensions#coc#enabled = 1
let airline#extensions#coc#error_symbol = 'E:'
let airline#extensions#coc#warning_symbol = 'W:'
let airline#extensions#coc#stl_format_err = '%E{[%e(#%fe)]}'
let airline#extensions#coc#stl_format_warn = '%W{[%w(#%fw)]}'

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

" vim-sneak
let g:sneak#label = 1

" coc-explorer
highlight CocWarnSign guibg=#282c34 guifg=#e5c07b
highlight CocInfoSign guibg=#282c34 guifg=#98c379
highlight CocErrorSign guibg=#282c34 guifg=#e06c75
highlight CocHintSign guibg=#282c34 guifg=#61afef
autocmd BufWritePre *.go :call CocAction('runCommand', 'editor.action.organizeImport')
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
