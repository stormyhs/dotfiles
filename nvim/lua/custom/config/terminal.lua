-- The default way to exit terminal mode is <C-\><C-n>, but <Esc> is nicer
vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", { noremap = true, silent = true })
