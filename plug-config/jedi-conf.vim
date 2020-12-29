" disable autocompletion, because we use deoplete for completion
let g:jedi#completions_enabled = 0

" use jedi vim configs
let g:jedi#auto_vim_configuration = 0

" Use jedi vim tabs for definition
let g:jedi#use_tabs_not_buffers = 1

" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"

"jedi auto completion start with dot
let g:jedi#popup_on_dot = 0

" first line for completion and saves on one keypress
let g:jedi#popup_select_first = 0
