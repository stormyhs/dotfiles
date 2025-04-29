-- Abbreviations / Shortcuts / Snippets

-- Rust debug print on selected text
vim.keymap.set("v", "<C-p>", function()
	vim.api.nvim_input([[diprintln!("{:?}", );<Esc>hhp]])
end)

-- Rust debug print on current word
vim.keymap.set("n", "<C-p>", function()
	vim.api.nvim_input([[diwiprintln!("{:?}", );<Esc>hhp]])
end)
