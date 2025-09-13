function ColorMyPencils(color)
    color = color or "rose-pine"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
    vim.api.nvim_set_hl(0, "FoldColumn", { bg = "none" })
    vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
end

local function enable_transparency()
    vim.api.nvim_set_hl(0, "normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "normalfloat", { bg = "none" })
    vim.api.nvim_set_hl(0, "signcolumn", { bg = "none" })
    vim.api.nvim_set_hl(0, "foldcolumn", { bg = "none" })
end

return {
    {
        "folke/tokyonight.nvim",
        lazy = false,
        opts = {},
        config = function()
            -- ColorMyPencils("tokyonight-night")
        end
    },
    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require('rose-pine').setup({
                disable_background = true,
                styles = {
                    italic = false,
                },
                highlight_groups = {
                    Visual = { bg = "iris", blend = 15 },
                },
            })
            -- ColorMyPencils("rose-pine")
        end
    },
    {
        "rebelot/kanagawa.nvim",
        config = function()
            require('kanagawa').setup({
                compile = false,  -- enable compiling the colorscheme
                undercurl = true, -- enable undercurls
                commentStyle = { italic = false },
                functionStyle = {},
                keywordStyle = { italic = false },
                statementStyle = { bold = false },
                typeStyle = {},
                transparent = false,   -- do not set background color
                dimInactive = false,   -- dim inactive window `:h hl-NormalNC`
                terminalColors = true, -- define vim.g.terminal_color_{0,17}
                colors = {             -- add/modify theme and palette colors
                    palette = {},
                    theme = {
                        all = {
                            ui = {
                                bg_gutter = "none",
                            },
                        },
                    },
                },
                overrides = function(colors) -- add/modify highlights
                    return {
                        DiagnosticError = { fg = colors.palette.waveRed },
                    }
                end,
                theme = "wave",    -- Load "wave" theme
                background = {     -- map the value of 'background' option to a theme
                    dark = "wave", -- try "dragon" !
                    light = "lotus"
                },
            })
            -- ColorMyPencils("kanagawa")
            vim.cmd("colorscheme kanagawa")
            enable_transparency()
        end
    }
}

-- local function enable_transparency()
--     vim.api.nvim_set_hl(0, "normal", { bg = "none" })
--     vim.api.nvim_set_hl(0, "normalfloat", { bg = "none" })
--     vim.api.nvim_set_hl(0, "signcolumn", { bg = "none" })
--     vim.api.nvim_set_hl(0, "foldcolumn", { bg = "none" })
-- end
--
-- return {
--     {
--         "folke/tokyonight.nvim",
--         config = function()
--             vim.cmd.colorscheme "tokyonight"
--             enable_transparency()
--         end
--     },
-- }
