return {
	'periaate/nyafi.nvim',
	dependencies = {
		"MunifTanjim/nui.nvim",
	},
	config = function()
		local nyafi = require("nyafi")
		nyafi.config = {
			events = {
				pre_open = nil,
				post_open = function()
					vim.cmd(":set filetype=markdown")
				end,
				pre_exit = nil,
				post_exit = nil,
			},
			maps = {
				open = {'<C-n>'},
				save = {},
				exit = {'<Esc>'},
			},
			filename = function ()
				return "/mnt/c/Users/PC/Documents/Obsidian Vaults/The Mind/meta.md"
			end
		}

		nyafi.setup()
	end
}
