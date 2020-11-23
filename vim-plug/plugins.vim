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
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    
    "Neovim Themes
    Plug 'joshdick/onedark.vim'
    Plug 'NLKNguyen/papercolor-theme'
    Plug 'morhetz/gruvbox'

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

    "vim commentary
    Plug 'tpope/vim-commentary'

    "startify for project managment
    Plug 'mhinz/vim-startify'

    "airline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    "git integration support
    Plug 'mhinz/vim-signify'
        
    "Sneak
    Plug 'justinmk/vim-sneak'

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

    endif

      "nvocde settings
    "Plug 'christianchiarulli/nvcode-color-schemes.vim'
    
    "Plug 'nvim-treesitter/nvim-treesitter'
    "Plug 'nvim-treesitter/playground'

    "Plug 'neovim/nvim-lspconfig'

    call plug#end()
