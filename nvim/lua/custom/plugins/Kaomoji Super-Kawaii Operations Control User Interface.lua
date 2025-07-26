-- Extremely important plugin, entire editor breaks without it.

return {
  'periaate/kaomoji.nvim',
  dependencies = { 'nvim-telescope/telescope.nvim' },
  keys = {
    {'<leader>k', "<cmd>lua require('kaomoji').find_and_paste()<cr>"},
  }
}
