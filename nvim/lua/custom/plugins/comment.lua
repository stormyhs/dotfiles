return {
	"numToStr/Comment.nvim",
	opts = {
		toggler = {
			---Line-comment toggle keymap
			line = '<C-c>',
			---Block-comment toggle keymap
			block = '<C-b>',
		},
		---LHS of operator-pending mappings in NORMAL and VISUAL mode
		opleader = {
			---Line-comment keymap
			line = '<C-c>',
			---Block-comment keymap
			block = '<C-b>',
		},
	}
}
