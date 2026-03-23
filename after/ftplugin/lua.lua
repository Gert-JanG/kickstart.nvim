local lsp_root = '/home/ggoossen/nvim_language_servers/lua-language-server'
vim.lsp.config('lua_ls', {
  cmd = {
    -- Run the actual binary directly
    lsp_root .. '/bin/lua-language-server',
    -- Tell it to execute the main logic
    '-E',
    lsp_root .. '/main.lua',
  },
  -- lua_ls = {
  --   -- cmd = { ... },
  --   -- filetypes = { ... },
  --   -- capabilities = {},
  cmd_cwd = lsp_root,
  settings = {
    Lua = {
      completion = {
        callSnippet = 'Replace',
      },
      -- You can toggle below to ignore Lua_LS's noisy `missing-fields` warnings
      diagnostics = { disable = { 'missing-fields' } },
    },
  },
})
vim.lsp.enable { 'lua_ls' }
