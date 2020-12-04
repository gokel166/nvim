call dein#add('Shougo/deoplete.nvim')
if !has('nvim')
  call dein#add('roxma/nvim-yarp')
  call dein#add('roxma/vim-hug-neovim-rpc')
endif


let g:deoplete#enable_at_startup = 20
let g:deoplete#sources#jedi#statement_length=50
let g:python3_host_prog = '~/Projects/Practice/pytesting/test_env/bin/python'

