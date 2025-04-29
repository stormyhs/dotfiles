-- Use <C-t> to switch through `themes`. Add as many as you'd like, that is in fact an array!

local themes = {
	{ name = "monokai-pro-spectrum", mode = "dark" },
	{ name = "tokyonight-night", mode = "dark" },
	{ name = "tokyonight-day", mode = "light" },
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

