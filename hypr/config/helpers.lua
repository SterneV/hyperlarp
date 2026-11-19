local mainMods = { "SUPER", "ALT",  }

local function bindMain(key, action, options)
    for _, mod in ipairs(mainMods) do
        hl.bind(mod .. " + " .. key, action, options)
    end
end

return {
    bindMain = bindMain,
}

