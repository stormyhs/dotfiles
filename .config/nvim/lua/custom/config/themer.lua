
-- Use <C-t> to switch between Light and Dark theme


local themes = {
    'oxocarbon',
    'monokai-pro-spectrum',
    'tokyonight-day',
}

local themeIndex = 1

vim.keymap.set('n', '<C-t>', function()
    themeIndex = themeIndex % #themes + 1
    vim.cmd('colorscheme ' .. themes[themeIndex])
    if themes[themeIndex] == "tokyonight-day" then
        vim.cmd('set background=light')
    else
        vim.cmd('set background=dark')
    end
    require("notify")("Theme: " .. themes[themeIndex], "info", {title = "Themer"})
end)
