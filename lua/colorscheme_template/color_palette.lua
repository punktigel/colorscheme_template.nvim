local options = require('colorscheme_template.config').options

local variants = {
    main = {
        col1 = '#42a7f5',
        col2 = '#f542a4',
        -- Add colors
        -- ...
    },
    light = {
        col1 = '#cccccc',
        col2 = '#fc7cc3',
        -- Add colors
        -- ...
    },
    dark = {
        col1 = '#000000',
        col2 = '#801851',
        -- Add colors
        -- ...
    }
}

print("VARIANT: " .. options.variant)

-- lua: ~= nil <=> not equal (!=)
if variants[options.variant] ~= nil then
    return variants[options.variant]
end

print("VARIANT NOT FOUND")


return vim.o.background == 'light' and variants.light  or variants.main
