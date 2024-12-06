
-- Abbreviations / Shortcuts / Snippets

-- Why the fuck is neovim, the "agressive refactor" of vim, keeping around the 15 metric tons of technical debt left behind since the 90s?
-- There are about 278 ways to input text programmatically, and only 3 of them do what you expect them to do. Sometimes.

-- Svelte script tag
vim.keymap.set("ia", "sscr", function()
    vim.api.nvim_set_current_line([[<script lang="ts"></script>]])
    vim.api.nvim_input("<BS>")
    vim.cmd("normal! $F<")
    vim.api.nvim_input("<CR>")
    vim.api.nvim_input("<CR><Esc>ki    ")
end)

-- Svelte style tag
vim.keymap.set("ia", "sstl", function()
    vim.api.nvim_set_current_line([[<style></style>]])
    vim.api.nvim_input("<BS>")
    vim.cmd("normal! $F<")
    vim.api.nvim_input("<CR>")
    vim.api.nvim_input("<CR><Esc>ki    ")
end)

-- Rust debug print on selected text
vim.keymap.set("v", "<C-p>", function()
    vim.api.nvim_input([[yoprintln!("{:?}", );<Esc>hhp]])
end)

-- Rust debug print on current word
vim.keymap.set("n", "<C-p>", function()
    vim.api.nvim_input([[yiwoprintln!("{:?}", );<Esc>hhp]])
end)

