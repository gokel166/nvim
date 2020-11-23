
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
  "source $HOME/.config/nvim/themes/gruvbox.vim
  source $HOME/.config/nvim/themes/gruvbox_night.vim
  source $HOME/.config/nvim/themes/airline.vim


  "Other configs
  source $HOME/.config/nvim/plug-config/coc/coc.vim
  source $HOME/.config/nvim/plug-config/fzf.vim
  source $HOME/.config/nvim/plug-config/commentary.vim
  source $HOME/.config/nvim/plug-config/start-screen.vim
  source $HOME/.config/nvim/plug-config/signify.vim
  source $HOME/.config/nvim/plug-config/sneak.vim
  source $HOME/.config/nvim/plug-config/coc/coc-extensions.vim
  source $HOME/.config/nvim/plug-config/better-whitespace.vim


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


"Lua
"luafile $HOME/.config/nvim/lua/nvcodeline.lua
"luafile $HOME/.config/nvim/lua/treesitter.lua
"luafile $HOME/.config/nvim/lua/plug-colorizer.lua
