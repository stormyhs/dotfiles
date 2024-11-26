
-- Use <C-t> to switch between Light and Dark theme

local isDarkTheme = true

vim.keymap.set('n', '<C-t>', function()
    if isDarkTheme then
        vim.cmd('colorscheme tokyonight-day')
        isDarkTheme = not isDarkTheme
        require("notify").notify("Light theme", "info", {title="Theme", render="compact", icon="🌞"})
        return
    end

    vim.cmd('colorscheme monokai-pro-spectrum')
    require("notify").notify("Dark theme", "info", {title="Theme", render="compact", icon="🌙"})
    isDarkTheme = not isDarkTheme
end)
