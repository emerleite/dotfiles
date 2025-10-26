-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.api.nvim_set_keymap("n", "<leader>Ao", ":AiderOpen --no-auto-commits<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>Am", ":AiderAddModifiedFiles<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>Cc", "<cmd>ClaudeCode<CR>", { desc = "Toggle Claude Code" })
