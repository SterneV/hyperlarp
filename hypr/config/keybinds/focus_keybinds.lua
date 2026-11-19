local helpers = require("config.helpers")
local programs = require("config.programs")

helpers.bindMain("V", hl.dsp.window.float({ action = "toggle" }))
helpers.bindMain("P", hl.dsp.window.pseudo())
helpers.bindMain("J", hl.dsp.layout("togglesplit"))    -- dwindle only
helpers.bindMain("F", hl.dsp.window.fullscreen( {action = "toggle"})) -- dwindle only

-- Move focus with mainMod + arrow keys
helpers.bindMain("left",  hl.dsp.focus({ direction = "left" }))
helpers.bindMain("right", hl.dsp.focus({ direction = "right" }))
helpers.bindMain("up",    hl.dsp.focus({ direction = "up" }))
helpers.bindMain("down",  hl.dsp.focus({ direction = "down" }))

-- move windows with mainMod + SHIFT + arrow keys
helpers.bindMain("SHIFT + left",  hl.dsp.window.move({ direction = "left" }))
helpers.bindMain("SHIFT + right", hl.dsp.window.move({ direction = "right" }))
helpers.bindMain("SHIFT + up",    hl.dsp.window.move({ direction = "up" }))
helpers.bindMain("SHIFT + down",  hl.dsp.window.move({ direction = "down" }))

--resize windows with mainMod + CTRL + arrow keys

helpers.bindMain("CTRL + left", hl.dsp.window.resize({x = -20, y = 0, relative = true }))
helpers.bindMain("CTRL + right", hl.dsp.window.resize({x = 20, y = 0, relative = true }))
helpers.bindMain("CTRL + up", hl.dsp.window.resize({x = 0, y = -20, relative = true }))
helpers.bindMain("CTRL + down", hl.dsp.window.resize({x = 0, y = 20, relative = true }))

-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]q                          qq  
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 
    helpers.bindMain(key, hl.dsp.focus({ workspace = i}))
    helpers.bindMain("SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

-- Example special workspace (scratchpad)
helpers.bindMain("S",         hl.dsp.workspace.toggle_special("magic"))
helpers.bindMain("SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

-- Scroll through existing workspaces with mainMod + scroll
helpers.bindMain("mouse_down", hl.dsp.focus({ workspace = "e+1" }))
helpers.bindMain("mouse_up",   hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
helpers.bindMain("mouse:272", hl.dsp.window.drag(),   { mouse = true })
helpers.bindMain("mouse:273", hl.dsp.window.resize(), { mouse = true })
