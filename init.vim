
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
  "source $HOME/.config/nvim/themes/gruvbox_light.vim
  "source $HOME/.config/nvim/themes/gruvbox_night.vim
  "source $HOME/.config/nvim/themes/ayu_theme.vim
  source $HOME/.config/nvim/themes/deus-thm.vim
  "source $HOME/.config/nvim/themes/seoul.vim
  "source $HOME/.config/nvim/themes/carbonized_light.vim
  "source $HOME/.config/nvim/themes/airline.vim

  " Airline themes
  source $HOME/.config/nvim/themes/airline-themes/deus-airline-theme.vim


  "Other configs
  source $HOME/.config/nvim/plug-config/coc/coc.vim
  source $HOME/.config/nvim/plug-config/fzf.vim
  source $HOME/.config/nvim/plug-config/commentary.vim
  source $HOME/.config/nvim/plug-config/start-screen.vim
  source $HOME/.config/nvim/plug-config/signify.vim
  source $HOME/.config/nvim/plug-config/sneak.vim
  source $HOME/.config/nvim/plug-config/coc/coc-extensions.vim
  source $HOME/.config/nvim/plug-config/better-whitespace.vim
  source $HOME/.config/nvim/plug-config/vim-rooter.vim


  source $HOME/.config/nvim/plug-config/floaterm.vim
  source $HOME/.config/nvim/plug-config/codi.vim
  source $HOME/.config/nvim/plug-config/neovide.vim
  source $HOME/.config/nvim/plug-config/closetags.vim
  source $HOME/.config/nvim/plug-config/far.vim
  source $HOME/.config/nvim/keys/which-key.vim
  "source $HOME/.config/nvim/plug-config/better-whitespace.vim


endif

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
"luafile $HOME/.config/nvim/lua/nvcodeline.lua
"luafile $HOME/.config/nvim/lua/treesitter.lua
"luafile $HOME/.config/nvim/lua/plug-colorizer.lua
