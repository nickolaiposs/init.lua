require("oil").setup({
    use_default_keymaps = false,
    keymaps = {
        ["<CR>"] = "actions.select",
        ["-"] = "actions.parent",
        ["<leader>ov"] = "actions.select_vsplit"
    },
    view_options = {
        show_hidden = true
    }
})

vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
