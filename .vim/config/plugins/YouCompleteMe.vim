"*********************************************************************
" Valloric/YouCompleteMe
"*********************************************************************

let g:ycm_key_list_select_completion = ['<TAB>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<S-TAB>', '<C-p>', '<Up>']
let g:ycm_auto_trigger =
      \ get(g:, 'ycm_auto_trigger', 1)
let g:ycm_autoclose_preview_window_after_insertion =
      \ get(g:, 'ycm_autoclose_preview_window_after_insertion', 1)
let g:ycm_seed_identifiers_with_syntax =
      \ get(g:, 'ycm_seed_identifiers_with_syntax', 1)
let g:ycm_collect_identifiers_from_comments_and_strings =
      \ get(g:, 'ycm_collect_identifiers_from_comments_and_strings', 1)
let g:ycm_global_ycm_extra_conf =
      \ '~/.vim/plugged/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_python_binary_path =
      \ get(g:, 'ycm_python_binary_path', 'python')
let g:ycm_show_diagnostics_ui =
      \ get(g:, 'ycm_show_diagnostics_ui', 0)
let g:ycm_key_detailed_diagnostics =
      \ get(g:, 'ycm_key_detailed_diagnostics', '')
let g:ycm_semantic_triggers =  {
      \   'c': ['->', '.', 're!\w{3}'],
      \   'objc': ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s', 're!\[.*\]\s'],
      \   'ocaml': ['.', '#'],
      \   'cpp,cuda,objcpp': ['->', '.', '::', 're!\w{3}'],
      \   'perl': ['->'],
      \   'php': ['->', '::'],
      \   'ruby': ['.', '::'],
      \   'lua': ['.', ':'],
      \   'erlang': [':'],
      \   'vim': ['re![_a-zA-Z]+[_\w]*\.'],
      \   'sh,zsh': ['re![\w-]{2}', '/', '-'],
      \   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.', 're!\w{3}'],
      \ }
let g:ycm_filetype_whitelist = {
      \   'sh': 1,
      \   'zsh': 1,
      \   'vim': 1,
      \   'c': 1,
      \   'cpp': 1,
      \   'python': 1,
      \   'javascript': 1,
      \   'typescript': 1,
      \   'go': 1,
      \   'java': 1,
      \ }

Plug 'Valloric/YouCompleteMe', {'do': './install.py ' . g:custom_ycm_install_options}

nnoremap <Leader>jd :YcmCompleter GoToDeclaration<CR>
nnoremap <Leader>ji :YcmCompleter GoToInclude<CR>
nnoremap <Leader>jj :YcmCompleter GoToDefinition<CR>
nnoremap <Leader>jr :YcmCompleter GoToReferences<CR>
