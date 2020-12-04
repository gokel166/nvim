" Get absolute path of the directory of the current file
let s:init_vim_dir = expand('<sfile>:p:h')
let s:nvim_version = api_info().version
"if s:nvim_version.minor == 5
"        execute("source " . s:init_vim_dir . "/nightly.vim")
"else
"        execute("source " . s:init_vim_dir . "/stable.vim")
"endif

" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

" Better Syntax Support
"Plug 'sheerun/vim-polyglot'
" File Explorer
Plug 'scrooloose/NERDTree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Auto pairs for '(' '[' '{'
Plug 'jiangmiao/auto-pairs'

"Multiple Cursors
Plug 'terryma/vim-multiple-cursors'

"Neovim Themes
Plug 'joshdick/onedark.vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'morhetz/gruvbox'
Plug 'ajmwagar/vim-deus'

"Neo format
Plug 'sbdchd/neoformat'

"Jedi
Plug 'davidhalter/jedi-vim'

"vim golang highlight
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Stable version of coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Keeping up to date with master
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

"Add tsserver
Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}

"Add fzf and vim rooter
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'yuki-ycino/fzf-preview.vim', { 'branch': 'release', 'do': ':UpdateRemotePlugins' }

"Align
Plug 'junegunn/vim-easy-align'

"vim commentary
Plug 'tpope/vim-commentary'

"startify for project managment
Plug 'mhinz/vim-startify'

"airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Formatter
"Plug 'Chiel92/vim-autoformat'

"git integration support
Plug 'mhinz/vim-signify'

"Sneak
Plug 'justinmk/vim-sneak'

"TS Syntax
Plug 'HerringtonDarkholme/yats.vim'

"Deoplete jedi
Plug 'deoplete-plugins/deoplete-jedi'

"snippets for coding faster
Plug 'honza/vim-snippets'

if exists('g:vscode')
  "Easy motion for VSCode
  "Plug 'asvetliakov/vim-easymotion'
  Plug 'ChristianChiarulli/vs-code-easymotion'
  Plug 'machakann/vim-highlightedyank'
else
  "Easymotion
  Plug 'easymotion/vim-easymotion'
  Plug 'tpope/vim-surround'

  " Debugging
  Plug 'puremourning/vimspector'
  Plug 'szw/vim-maximizer'

  " Better Syntax Support
  Plug 'sheerun/vim-polyglot'

  " auto set indent settings
  Plug 'tpope/vim-sleuth'

  " Git
  Plug 'airblade/vim-gitgutter'
  Plug 'rhysd/git-messenger.vim'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rhubarb'
  Plug 'junegunn/gv.vim'

  " Terminal
  Plug 'voldikss/vim-floaterm'

  "Rainbow
  Plug 'junegunn/rainbow_parentheses.vim'

  " Cool Icons
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'ryanoasis/vim-devicons'

  " Closetags
  Plug 'alvan/vim-closetag'

  " Find and replace
  Plug 'ChristianChiarulli/far.vim'

  " Smooth scroll
  Plug 'psliwka/vim-smoothie'

  " Interactive code
  Plug 'metakirby5/codi.vim'

  " See what keys do like in emacs
  Plug 'liuchengxu/vim-which-key'


  "Color themes
  Plug 'ayu-theme/ayu-vim' " or other package manager
  Plug 'junegunn/seoul256.vim'
  Plug 'nightsense/carbonized'
  Plug 'heraldofsolace/nisha-vim'
  Plug 'albertorestifo/github.vim'
  Plug 'aradunovic/perun.vim'

  "Barbar tabline plugin
  "Plug 'romgrk/barbar.nvim'
  " async tasks
  Plug 'skywind3000/asynctasks.vim'
  Plug 'skywind3000/asyncrun.vim'

  "Ranger plugin
  Plug 'rbgrouleff/bclose.vim'

  " Swap windows
  Plug 'wesQ3/vim-windowswap'

  "      if has('nvim')
  "        Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  "      else
  "        Plug 'Shougo/deoplete.nvim'
  "        Plug 'roxma/nvim-yarp'
  "        Plug 'roxma/vim-hug-neovim-rpc'
  "      endif
  "        let g:deoplete#enable_at_startup = 1

  " Golang plugin
  Plug 'fatih/vim-go'


endif

"nvocde settings
"Plug 'christianchiarulli/nvcode-color-schemes.vim'
Plug 'neovim/nvim-lspconfig'
"Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/nvim-treesitter', { 'commit': '3c07232'}
Plug 'nvim-treesitter/playground'
Plug 'nvim-lua/completion-nvim'
"Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/diagnostic-nvim'

" Colorizer
Plug 'norcalli/nvim-colorizer.lua'

" Status Line
Plug 'glepnir/galaxyline.nvim'

Plug 'neovim/nvim-lspconfig'

call plug#end()
