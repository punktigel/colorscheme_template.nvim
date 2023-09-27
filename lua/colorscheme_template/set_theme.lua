local M = {}

function M._load()
    local p = require('colorscheme_template.color_palette')

    M.defaults = {
        ['LineNr'] = {fg = p.col1, bg = p.col2},
        ['Comment'] = {link = 'LineNr'}, -- link to LineNr - apply colors from LineNr
        -- Add default groups
        -- ...

        -- set background color
        ['Normal'] = {bg = p.col1},
    }

    for group, opts in pairs(M.defaults) do
        -- apply colors: nvim_set_hl({ns_id}, {group name}, {*val}) - ns_id: (namespace id) 0: globally
        vim.api.nvim_set_hl(0, group, opts)
    end
end

return M
