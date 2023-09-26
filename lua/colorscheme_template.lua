local config = require('colorscheme_template.config')
local M = {}

function M.set_colorscheme(variant)
    -- Set colorscheme variant
    config.extend({variant = variant})

    vim.opt.termguicolors = true

    -- Reset active colorscheme
    if vim.g.colors_name then
        vim.cmd('hi clear')
        vim.cmd('syntax reset')
    end

    -- set the name
    vim.g.colors_name = 'colorscheme_template'

    require('colorscheme_template.set_theme')._load()
end

function M.setup(options)
    config.extend(options)
end

return M
