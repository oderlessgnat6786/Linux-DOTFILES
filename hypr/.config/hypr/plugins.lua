hl.plugin({
    hyprbars = {
        bar_height = 33,
        bar_color = "rgb(194, 194, 194)",
        bar_blur = true,
        bar_title_enabled = true,
        bar_text_size = 12,
        bar_text_font = "Jetbrains Mono Nerd Font",
        bar_text_align = "center",
        bar_buttons_alignment = "left",
        bar_padding = 15,
        bar_button_padding = 6,
        col_text = "rgb(0, 0, 0)",
        hyprbars_button = {
            "0xff8c1d18, 15, , hyprctl dispatch killactive",
            "0xffffbb00, 15, , hyprctl dispatch movetoworkspacesilent \"special:magic\" && notify-send 'Moved window to special workspace (WIN+G)'",
            "0xff1f8a3b, 15, , hyprctl dispatch fullscreen 1",
            "0xff1e3a8a, 15, , hyprctl dispatch togglefloating"
        },
        on_double_click = "hyprctl dispatch fullscreen 1"
    },
    hyprexpo = {
        columns = 3,
        gap_size = 10,
        bg_col = "0xff8c1d18",
        workspace_method = "first 1"
    }
})