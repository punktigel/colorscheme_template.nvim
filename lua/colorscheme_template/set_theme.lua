local M = {}

function M._load()
    local p = require('colorscheme_template.color_palette')

    M.defaults = {
        ['LineNr'] = {fg = p.col1, bg = p.col2},
        ['Comment'] = {fg = p.col1, bg = p.col2},
    }

    for group, opts in pairs(M.defaults) do
        vim.api.nvim_set_hl(0, group, opts)
    end
end

return M
