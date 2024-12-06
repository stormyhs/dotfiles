
-- Some basic neccesities

vim.opt.relativenumber = true
vim.opt.foldexpr = "lsp"
vim.opt.foldenable = false

vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.smarttab = false
vim.opt.tabstop = 4

vim.opt.scrolloff = 3

-- Save on <C-s>
vim.keymap.set("n", "<C-s>", ":w<CR>")

-- Close window on <C-q>
vim.keymap.set("n" , "<C-q>", "<C-w>q")
