-- Set tabstops and widths
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

vim.cmd("set spell")
vim.cmd("set spelllang=en_ca")

-- Add line numbers to left column
vim.cmd("set number")

-- Remove automatic newline continuation of comments
vim.cmd("autocmd BufEnter * set formatoptions-=cro")
vim.cmd("autocmd BufEnter * setlocal formatoptions-=cro")

-- Set leader to space
vim.g.mapleader = " "

-- Diagnostics
--vim.keymap.set("n", "<leader>vd", function()
--  vim.diagnostic.open_float()
--end, opts)
vim.keymap.set("n", "<leader>[d", function()
  vim.diagnostic.goto_next()
end, opts)
vim.keymap.set("n", "<leader>]d", function()
  vim.diagnostic.goto_prev()
end, opts)
