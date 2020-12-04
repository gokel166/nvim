"let g:kite_support_languages = ['go', 'javascript', 'python']
let g:kite_support_languages = ['*']

let g:kite_auto_complete=0

let g:kite_snippets=0

let g:kite_tab_complete=1

set completeopt+=noselect
set completeopt+=preview

set belloff+=ctrlg  " if vim beeps during completion

autocmd CompleteDone * if !pumvisible() | pclose | endif


autocmd BufWritePre *.py execute ':Black'


"set completeopt+=menuone
"
"autocmd CompleteDone * if !pumvisible() | pclose | endif
"
"set belloff+=ctrlg
"
"let g:kite_previous_placeholder = '<C-H>'
"let g:kite_next_placeholder = '<C-L>'
"
"nmap <silent> <buffer> gK <Plug>(kite-docs)
"
"let g:kite_documentation_continual=1
"
""virtualenv location for python
"let g:python3_host_prog='~/Projects/Practice/pytesting/test_env/bin/python3'
"
"set statusline=%<%f\ %h%m%r%{kite#statusline()}%=%-14.(%l,%c%V%)\ %P
"set laststatus=2  " always display the status line
