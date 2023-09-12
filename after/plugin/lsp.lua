local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  -- lsp.default_keymaps({buffer = bufnr})

  local opts = {buffer = bufnr, remap = false}

  -- vim.keymap.set("n", "<leader>rn", "<Cmd>lua vim.lsp.buf.rename()<CR>", {buffer = bufnr})
  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts) 
  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("n", "<leader>rr", function() vim.lsp.buf.references() end, opts)

end)

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.ensure_installed({
    -- Replace these with whatever servers you want to install
    'tsserver',
    'eslint',
    'rust_analyzer'
})

lsp.setup()

local cmp = require("cmp")
local cmp_action = require("lsp-zero").cmp_action()

cmp.setup({
    mapping = {
        ["<CR>"] = cmp.mapping.confirm({select = false})
    }
})
