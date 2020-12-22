require 'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true
  }, incremental_selection = {
    enable = false,
  },
  ensure_installed = {'javascript', 'python', 'go'}
}

