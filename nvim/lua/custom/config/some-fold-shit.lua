-- I don't remember what half of this does, but it works.

vim.api.nvim_create_autocmd({ "WinNew", "VimEnter" }, {
	pattern = "*",
	callback = function()
		vim.w.my_foldlevel = 1
	end,
})

vim.keymap.set("n", "zM", function()
	vim.w.my_foldlevel = 0
	require("ufo").closeFoldsWith(vim.w.my_foldlevel)
end)

vim.keymap.set("n", "zR", function()
	vim.w.my_foldlevel = 5
	require("ufo").closeFoldsWith(vim.w.my_foldlevel)
end)

vim.keymap.set("n", "zr", function()
	vim.w.my_foldlevel = vim.w.my_foldlevel + 1
	require("ufo").closeFoldsWith(vim.w.my_foldlevel)
end)

vim.keymap.set("n", "zm", function()
	vim.w.my_foldlevel = math.max(vim.w.my_foldlevel - 1, 0)

	require("ufo").closeFoldsWith(vim.w.my_foldlevel)
end)
