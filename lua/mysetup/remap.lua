vim.g.mapleader = " "

-- save
vim.keymap.set("n", "<C-s>", "<Cmd>w<CR>")

-- fast quit
vim.keymap.set("n", "<leader>qq", "<Cmd>q!<CR>")

-- move code block up with indenting
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- move codeblock down with indenting
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- half page scrolling with ctrl d and ctrl u
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- paste over selection with void register
vim.keymap.set("x", "<leader>p", [["_dP]])

-- delete to void register
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- copy/paste to system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({"n", "v"}, "<leader>p", [["+p]])

-- Ctrl-f to /
vim.keymap.set("n", "<C-f>", "/")
