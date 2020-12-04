noremap <F3> :Autoformat<CR>

au BufWrite * :Autoformat

let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0

autocmd FileType vim,tex let b:autoformat_autoindent=0
