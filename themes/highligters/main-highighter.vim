function! CocNvimHighlight()
            highlight CocErrorHighlight ctermfg=Red  guifg=#ff0000
            highlight CocWarningHighlight ctermfg=Red  guifg=#ff0000
            highlight CocInfoHighlight ctermfg=Red  guifg=#ff0000
            highlight CocHintHighlight ctermfg=Red  guifg=#ff0000
            highlight CocErrorLine ctermfg=Red  guifg=#ff0000
            highlight CocWarningLine ctermfg=Red  guifg=#ff0000
            highlight CocInfoLine ctermfg=Red  guifg=#ff0000
            highlight CocHintLine ctermfg=Red  guifg=#ff0000

            highlight CocHighlightText  guibg=#111111 ctermbg=223
	endfunction

        autocmd VimEnter function CocNvimHighlight()
        " Or if you you use vim-plug with something like
        " Plug 'neoclide/coc.nvim', { 'do': { -> coc#util#install()}, 'for': [ 'typescript', 'javascript', 'json', 'css', 'java' ] }
        " use the following autocmd instead
        " autocmd! user coc.nvim CocNvimHighlight()
        " See also https://github.com/junegunn/vim-plug/issues/702
