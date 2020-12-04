"enable tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''

" enable powerline fonts
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''

function! AirlineInit()
let g:airline_section_a = airline#section#create(['mode','branch'])
let g:airline_section_b = airline#section#create('%{virtualenv#statusline()}')
let g:airline_section_c = airline#section#create(['hunks','%f'])
let g:airline_section_x = airline#section#create(['filetype'])
let g:airline_section_y = airline#section#create(['%P'])
let g:airline_section_z = airline#section#create_right(['linenr', '%c']) 

" Switch to your current theme
let g:airline_theme = 'base16_google'

" Always show tabs
set showtabline=2

" We don't need to see things like -- INSERT -- anymore
set noshowmode

endfunction

autocmd VimEnter * call AirlineInit()


