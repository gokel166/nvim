
if exists('g:vscode')
  source $HOME/.config/nvim/plug-config/polyglot.vim
endif

source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/general/functions.vim


"VSCode
if exists('g:vscode')
  source $HOME/.config/nvim/vscode/settings.vim

else
  "Themes
  "source $HOME/.config/nvim/themes/onedark.vim
  source $HOME/.config/nvim/themes/gruvbox_light.vim
  "source $HOME/.config/nvim/themes/gruvbox_dark.vim
  "source $HOME/.config/nvim/themes/ayu_theperun-theme.vim
  "source $HOME/.config/nvim/themes/deus-thm.vim
  "source $HOME/.config/nvim/themes/seoul.vim
  "source $HOME/.config/nvim/themes/carbonized_light.vim
  "source $HOME/.config/nvim/themes/airline.vim
  "source $HOME/.config/nvim/themes/nisha-theme.vim
  "source $HOME/.config/nvim/themes/github-theme.vim
  "source $HOME/.config/nvim/themes/perun-theme.vim

  " Airline themes
  "source $HOME/.config/nvim/themes/airline-themes/deus-airline-theme.vim
  source $HOME/.config/nvim/themes/airline-themes/base16-google.vim


  "Other configs
  source $HOME/.config/nvim/plug-config/coc/coc.vim
  source $HOME/.config/nvim/plug-config/fzf.vim
  source $HOME/.config/nvim/plug-config/fzf-preview-conf.vim
  source $HOME/.config/nvim/plug-config/commentary.vim
  source $HOME/.config/nvim/plug-config/start-screen.vim
  source $HOME/.config/nvim/plug-config/signify.vim
  source $HOME/.config/nvim/plug-config/sneak.vim
  source $HOME/.config/nvim/plug-config/coc/coc-extensions.vim
  source $HOME/.config/nvim/plug-config/better-whitespace.vim
  "source $HOME/.config/nvim/plug-config/dein.vim
  source $HOME/.config/nvim/plug-config/vim-rooter.vim

  source $HOME/.config/nvim/plug-config/floaterm.vim
  source $HOME/.config/nvim/plug-config/codi.vim
  source $HOME/.config/nvim/plug-config/neovide.vim
  source $HOME/.config/nvim/plug-config/closetags.vim
  source $HOME/.config/nvim/plug-config/far.vim
  source $HOME/.config/nvim/plug-config/ranger-conf.vim
  source $HOME/.config/nvim/keys/which-key.vim

  source $HOME/.config/nvim/plug-config/jedi-conf.vim
  source $HOME/.config/nvim/plug-config/highlight-conf.vim 
  source $HOME/.config/nvim/plug-config/neoformat-conf.vim

  "source $HOME/.config/nvim/plug-config/better-whitespace.vim

  "source $HOME/.config/nvim/plug-config/kite-config.vim

  "Powerline fonts
  source $HOME/.config/nvim/fontconfig/powerline-conf.vim


  "Config for Lang Server Client
  source $HOME/.config/nvim/langserv-config/go-pls.vim


endif

lua require'nvim-treesitter.configs'.setup { highlight = { enable = true } }
source $HOME/.config/nvim/plug-config/quickscope.vim

" Add paths to node and python here
if !empty(glob("~/.config/nvim/paths.vim"))
  source $HOME/.config/nvim/paths.vim
endif

source $HOME/.config/nvim/plug-config/quickscope.vim

" Better nav for omnicomplete TODO figure out why this is being overridden
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

command! -nargs=0 Prettier :CocCommand prettier.formatFile

"Disables automatic commenting on newline
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=0
"Lua
luafile $HOME/.config/nvim/lua/nvcodeline.lua
luafile $HOME/.config/nvim/lua/treesitter.lua

if (has("termguicolors"))
   set termguicolors
endif

set runtimepath+=~/.vim-plugins/LanguageClient-neovim


luafile $HOME/.config/nvim/lua/plug-colorizer.lua

" Go configuration
let g:go_gopls_enable=0

"Pycompletions
let g:jedi#completions_enabled = 0

set formatoptions-=cro
set cursorline
"hi CursorLine cterm=NONE ctermbg=DarkGray

" Use completion-nvim in every buffer
"autocmd BufEnter * lua require'completion'.on_attach()

"Lua configurations for queries and language support

:lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { },  -- list of language that will be disabled ex 
  },
}
EOF


" Setup nvim-lsp
:lua << END
  require'lspconfig'.tsserver.setup{}
  require'lspconfig'.solargraph.setup{}
END

"Completion matching strategy
let g:completion_sorting="length"

let g:completion_enable_auto_paren = 1

let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy', 'all']
let g:completion_matching_smart_case = 1
let g:completion_trigger_character = ['.', '::']
let g:completion_trigger_on_delete = 1
let g:completion_timer_cycle = 200

" Language server configs
"let g:LanguageClient_serverCommands = {
"    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
"    \ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
"    \ 'python': ['/home/george/.local/bin/pyls'],
"    \ }

"flow lang server config
let g:javascript_plugin_flow = 1

nmap <F5> <Plug>(lcn-menu)
" Or map each action separately
nmap <silent>K <Plug>(lcn-hover)
nmap <silent> gd <Plug>(lcn-definition)
nmap <silent> <F2> <Plug>(lcn-rename)


