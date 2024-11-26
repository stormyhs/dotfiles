
-- Use <C-t> to switch between Light and Dark theme


local themes = {
    'tokyonight-day',
    'monokai-pro-spectrum',
}

local themeIndex = 1

vim.keymap.set('n', '<C-t>', function()
    themeIndex = themeIndex % #themes + 1
    vim.cmd('colorscheme ' .. themes[themeIndex])
    require("notify")("Theme: " .. themes[themeIndex], "info", {title = "Themer"})
end)
