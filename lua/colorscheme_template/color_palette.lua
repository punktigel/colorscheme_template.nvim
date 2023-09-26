local options = require('colorscheme_template.config').options

local variants = {
    main = {
        col1 = '#42a7f5',
        col2 = '#f542a4'
    },
    light = {
        col1 = '#ffffff',
        col2 = '#fc7cc3'
    },
    dark = {
        col1 = '#000000',
        col2 = '#801851'
    }
}

print("VARIANT: " .. options.variant)

if variants[options.variant] ~= nil then
    return variants[options.variant]
end

print("VARIANT NOT FOUND")

return variants.main
