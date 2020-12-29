-- Check if it's already defined for when I reload this file.
local lspconfig = require'lspconfig'


-- docker languageserver
lspconfig.dockerls.setup{
  dockerls = {
    bin_dir = '/home/george/.cache/nvim/lspconfig/dockerls/node_modules/.bin',
    binaries = {
      ['docker-languageserver'] = '/home/george/.cache/nvim/lspconfig/dockerls/node_modules/.bin/docker-languageserver'
    },
    install_dir = '/home/george/.cache/nvim/lspconfig/dockerls',
    is_installed = true
  }
}

-- gopls
lspconfig.gopls.setup{
  cmd = { "gopls" };
  filetypes = { "go" };
  log_level = 2;
  settings = {};
  root_dir = lspconfig.util.root_pattern('.git', 'gomod');
}



-- html ls
require'lspconfig'.html.setup{
  cmd = { "html-language-server", "--stdio" },
  filetypes = { "html" },
  init_options = {
    configurationSection = { "html", "css", "javascript" },
    embeddedLanguages = {
      css = true,
      javascript = true
    }
  },
  html = {
    bin_dir = '/home/george/.cache/nvim/lspconfig/html/node_modules/.bin',
    binaries = {
      ['html-language-server'] = '/home/george/.cache/nvim/lspconfig/html/node_modules/.bin/html-language-server'
  },
  install_dir = '/home/george/.cache/nvim/lspconfig/html',
  is_installed = true
  }
}
-- vscode json lsp
--require'lspconfig'.jsonls.setup{
--  cmd = { "vscode-json-languageserver", "--stdio" },
--  filetypes = { "json" }
--  root_dir = root_pattern(".git", "vim.fn.getcwd()")
--}

lspconfig.pyls_ms.setup{
  cmd = { "dotnet", "exec", "/home/george/.cache/nvim/lspconfig/pyls_ms/Microsoft.Python.LanguageServer.dll" },
  install_dir = "/home/george/.cache/nvim/lspconfig/pyls_ms",
  is_installed = "file",
  filetypes = { "python" },
  init_options = {
    analysisUpdates = true,
    asyncStartup = true,
    displayOptions = {},
    interpreter = {
      properties = {
        InterpreterPath = "",
        Version = "",
      }
    }
  }
}


-- omnisharp
require'lspconfig'.omnisharp.setup{
  cmd = { "/home/george/.cache/lspconfig/omnisharp/run", "--languageserver", "--hostPID", "945061" },
  install_dir = '/home/george/.cache/nvim/lspconfig/omnisharp',
  is_installed = "files",
}

--rust_language_server
--lspconfig.rust_language_server.setup{
--  cmd = { "R", "--slave", "-e", "languageserver::run()" },
--  filetypes = { "r", "rmd" },
--  log_level = 2
--}
--


-- rls
--require'lspconfig'.rls.setup{
--  cmd = { "rls" };
--  filetypes = { "rust" };
--  rust-client.engine = { "rls", "rust-analyzer" };
--  root_dir = lspconfig.util.root_pattern("Cargo.toml");
--}


-- rust_analyzer
--lspconfig.rust_analyzer.setup{
--  rust_analyzer = {
--    cmd = { "rust-analyzer" };
--    filetypes = { "rust" };
--    root_dir = lspconfig.util.root_pattern("Cargo.toml", "rust-project.json");
--    settings = {
--      ["rust-analyzer"] = {};
--    }
--  }
--}

-- vim lsp
require'lspconfig'.vimls.setup{
  vimls = {
    bin_dir = '/home/george/.cache/nvim/lspconfig/vimls/node_modules/.bin',
    binaries = {
      ['vim-language-server'] = '/home/george/.cache/nvim/lspconfig/vimls/node_modules/.bin/vim-language-server'
    },
    install_dir = '/home/george/.cache/nvim/lspconfig/html',
    is_installed = true
  }
}


-- texlab
lspconfig.texlab.setup {
  name = 'textlab_fancy';
  log_level = vim.lsp.protocol.MessageType.Log;
  message_level = vim.lsp.protocol.MessageType.Log;
  settings = {
    latex = {
      build = {
        onSave = true
      }
    }
  }
}


-- tsserver
require'lspconfig'.tsserver.setup{
  tsserver = {
    bin_dir = '/home/george/.cache/nvim/lspconfig/tsserver/node_modules/.bin',
    binaries = {
      ['typescript-language-server'] = '/home/george/.cache/nvim/lspconfig/tsserver/node_modules/.bin/typescript-language-server'
  },
    install_dir = '/home/george/.cache/nvim/lspconfig/tsserver',
    is_installed = true
  }
}

-- yml
lspconfig.yamlls.setup{
  yamlls = {
    bin_dir = "/home/george/.cache/nvim/lspconfig/yamlls/node_modules/.bin",
    binaries = {
      ['yaml-language-server'] = '/home/george/.cache/nvim/lspconfig/yamlls/node_modules/.bin/yaml-language-server'
    },
    install_dir = "/home/george/.cache/nvim/lspconfig/yamlls",
    is_installed = false
  }
}

function goimports(timeoutms)
    local context = { source = { organizeImports = true } }
    vim.validate { context = { context, "t", true } }

    local params = vim.lsp.util.make_range_params()
    params.context = context

    local method = "textDocument/codeAction"
    local resp = vim.lsp.buf_request_sync(0, method, params, timeoutms)
    if resp and resp[1] then
      local result = resp[1].result
      if result and result[1] then
        local edit = result[1].edit
        vim.lsp.util.apply_workspace_edit(edit)
      end
    end

    vim.lsp.buf.formatting()
  end



