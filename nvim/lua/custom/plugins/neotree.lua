return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    config = function()
        require("neo-tree").setup({
            close_if_last_window = true,
            window = {
                width = 25,
            },
            filesystem = {
                follow_current_file = {
                    enabled = true,
                    leave_dirs_open = false
                },
                filtered_items = {
                    visible = false,
                    hide_dotfiles = true,
                    hide_gitignored = false,
                    never_show = {
                        "node_modules", "target", "build", "Cargo.lock", "bun.lock", "deno.lock", "package.lock"
                    }
                },
            },

            default_component_configs = {
                name = {
                    trailing_slash = true,
                }
            }
        })
    end
}

