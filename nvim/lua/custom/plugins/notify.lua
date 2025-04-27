local M = {
    "rcarriga/nvim-notify",
}

M.config = function()
    local notify = require("notify")

    -- dismiss the notification with <ESC>
    vim.keymap.set("n", "<ESC>", ":lua require('notify').dismiss()<CR>", { silent = true })

    notify.setup({
        timeout = 5000,
        top_down = true,
        background_colour = '#363837',
        render = 'minimal',
        max_height = 50,
    })

    vim.notify = notify
end

return M
