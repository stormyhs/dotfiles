-- NOTE: This will not activate the LSP for these files, only the syntax highlighting. (at least on my config :) )

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
	pattern = { "*.myst" },
	callback = function()
		vim.bo.filetype = "ts"
	end,
})

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
	pattern = { "*.rasm" },
	callback = function()
		vim.bo.filetype = "asm"
	end,
})
