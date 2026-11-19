---------------------
---- KEYBINDINGS ----
---------------------
local helpers = require("config.helpers")
local programs = require("config.programs")


helpers.bindMain("Q", hl.dsp.exec_cmd(programs.terminal))
helpers.bindMain("B", hl.dsp.exec_cmd(programs.browser))
helpers.bindMain("E", hl.dsp.exec_cmd(programs.editor))
helpers.bindMain("R", hl.dsp.exec_cmd(programs.menu))
helpers.bindMain("SHIFT + V", hl.dsp.exec_cmd(programs.volumemixer))
-- reset waybar
helpers.bindMain("SHIFT + W", hl.dsp.exec_cmd("killall waybar; waybar &"))
-- screenshot - into clipboard
helpers.bindMain("S", hl.dsp.exec_cmd("hyprshot -m region --clipboard-only"))
-- close window
local closeWindowBind = helpers.bindMain("C", hl.dsp.window.close())
-- sleepmode
helpers.bindMain("SHIFT + L", hl.dsp.exec_cmd("hyprlock"))

-- closeWindowBind:set_enabled(false)
-- helpers.bindMain("M", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))


-- -- close specific windows with escape (needs work)
-- hl.bind("escape", hl.dsp.exec_cmd("killall pavucontrol"))
