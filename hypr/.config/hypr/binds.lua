local mainMod = "SUPER"

-- # MOUSE #
hl.bind("SUPER + mouse:272", hl.dsp.window.drag(),{mouse = true})
hl.bind("SUPER + mouse:273", hl.dsp.window.resize(), {mouse = true})


-- # KEYBOARD #

--BASIC
hl.bind("SUPER + Q", hl.dsp.exec_cmd(terminal))
hl.bind("SUPER + C", hl.dsp.window.kill())
hl.bind("SUPER + SHIFT + M", hl.dsp.exit())
hl.bind("SUPER + E", hl.dsp.exec_cmd(fileManager))
hl.bind("SUPER + F", hl.dsp.window.float({ action = "toggle" }))
hl.bind("SUPER + Space", hl.dsp.exec_cmd(menu))
hl.bind("SUPER + P", hl.dsp.window.pseudo())

--SCREENSHOTS
hl.bind("PRINT", hl.dsp.exec_cmd("notify-send 'Taking Screenshot' & hyprshot -m output --clipboard-only"))
hl.bind("SUPER + PRINT", hl.dsp.exec_cmd("notify-send 'Taking Screenshot (with markup)' & hyprshot -m output --raw | satty --filename - -o /home/DEV/Pictures/Screenshots/Hyprshots"))
hl.bind("SUPER + SHIFT + S", hl.dsp.exec_cmd("notify-send 'Taking Screenshot' & hyprshot -m region --clipboard-only"))
hl.bind("SUPER + S", hl.dsp.exec_cmd("notify-send 'Taking Screenshot (with markup)' & hyprshot -m region --raw | satty --filename - -o /home/DEV/Pictures/Screenshots/Hyprshots"))

--POWER, LOGOUT, AND MISC OPTIONS
hl.bind("SUPER + SHIFT + L", hl.dsp.exec_cmd("~/.config/scripts/wlogout-toggle.sh"))
hl.bind("SUPER + CTRL + L", hl.dsp.exec_cmd("loginctl lock-session"))
hl.bind("SUPER + R", hl.dsp.exec_cmd("pkill waybar || waybar &"))
hl.bind("SUPER + PERIOD", hl.dsp.exec_cmd("~/.config/scripts/rofi-toggle.sh ~/.config/rofi/EMOJI.sh"))
hl.bind("SUPER + a", hl.dsp.exec_cmd("swaync-client -t"))
hl.bind("SUPER + n", hl.dsp.exec_cmd("swaync-client -t"))
hl.bind("SUPER + t", hl.dsp.exec_cmd("~/.config/scripts/hyprbars.sh"))
hl.bind("SUPER + SHIFT + F", hl.dsp.exec_cmd(browser))
hl.bind("SUPER + V", hl.dsp.exec_cmd("~/.config/scripts/rofi-toggle.sh ~/.config/rofi/CLIPBOARD.sh"))
hl.bind("SUPER + SHIFT + V", hl.dsp.exec_cmd("copyq toggle"))

--MOVE FOCUS (ARROW KEYS)
hl.bind("SUPER + Left", hl.dsp.focus({ direction = "l" }))
hl.bind("SUPER + Right", hl.dsp.focus({ direction = "r" }))
hl.bind("SUPER + Up", hl.dsp.focus({ direction = "u" }))
hl.bind("SUPER + Down", hl.dsp.focus({ direction = "d" }))

--WORKSPACES (GO TO WORKSPACE AND MOVE WINDOW TO WORKSPACE)
for i = 1, 9 do
    hl.bind("SUPER + " .. tostring(i), hl.dsp.focus({ workspace = tostring(i) }))
    hl.bind("SUPER + SHIFT + " .. tostring(i), hl.dsp.window.move({ workspace = tostring(i) }))
end
hl.bind("SUPER + 0", hl.dsp.focus({ workspace = "10" }))
hl.bind("SUPER + SHIFT + 0", hl.dsp.window.move({ workspace = "10" }))

--SPECIAL WORKSPACE
hl.bind("SUPER + G", hl.dsp.workspace.toggle_special("magic"))
hl.bind("SUPER + SHIFT + G", hl.dsp.window.move({ workspace = "special:magic" }))

--CYCLE WORKSPACES
hl.bind("SUPER + CTRL + RIGHT", hl.dsp.focus({ workspace = "+1" }))
hl.bind("SUPER + CTRL + LEFT", hl.dsp.focus({ workspace = "-1" }))

--VOLUME
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("swayosd-client --output-volume 2"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("swayosd-client --output-volume -2"), { locked = true, repeating = true })

--MICROPHONE
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("swayosd-client --output-volume mute-toggle"), { locked = true, repeating = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { locked = true, repeating = true })

--BRIGHTNESS
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { locked = true, repeating = true })

--MULTIMEDIA PLAYBACK
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("swayosd-client --playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("swayosd-client --playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("swayosd-client --playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("swayosd-client --playerctl previous"), { locked = true })