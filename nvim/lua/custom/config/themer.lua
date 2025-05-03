-- Use <C-t> to switch through `themes`. Add as many as you'd like, that is in fact an array!

local themes = {
	{ name = "monokai-pro-spectrum", mode = "dark" },
	{ name = "catppuccin-latte", mode = "light" },
	{ name = "tokyonight-night", mode = "dark" },
}

local themeIndex = 1 -- lua

vim.cmd("colorscheme " .. themes[themeIndex].name)
vim.cmd("set background=" .. themes[themeIndex].mode)

vim.keymap.set("n", "<C-t>", function()
	themeIndex = themeIndex % #themes + 1

	vim.cmd("colorscheme " .. themes[themeIndex].name)
	vim.cmd("set background=" .. themes[themeIndex].mode)

	require("notify")("Theme: " .. themes[themeIndex].name, "info", { title = "Themer" })
end)

