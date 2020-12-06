
"vim go lang server configurations
:lua <<EOF
  nvim_lsp = require "lspconfig"
  nvim_lsp.gopls.setup {
    cmd = {"gopls", "serve"},
    settings = {
      gopls = {
        analyses = {
          unusedparams = true,
        },
        staticcheck = true,
      },
    },
  }
EOF


":lua <<EOF
"  -- …

"  function goimports(timeoutms)
"local context = { source = { organizeImports = true } }
"    vim.validate { context = { context, "t", true } }
"
"    local params = vim.lsp.util.make_range_params()
"    params.context = context
"
"    local method = "textDocument/codeAction"
"    local resp = vim.lsp.buf_request_sync(0, method, params, timeoutms)
"    if resp and resp[1] then
"      local result = resp[1].result
"      if result and result[1] then
"        local edit = result[1].edit
"        vim.lsp.util.apply_workspace_edit(edit)
"      end
"    end
"
"    vim.lsp.buf.formatting()
"  end
"EOF

autocmd BufWritePre *.go lua goimports(1000)

"Omnifunc configuration
autocmd FileType go setlocal omnifunc=v:lua.vim.lsp.omnifunc
