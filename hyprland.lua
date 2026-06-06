---- MONITORS ----

hl.monitor({
    output   = "DP-5",
    mode     = "1920x1080@144.000",
    position = "auto",
    scale    = "1",
    vrr      = 1,
})

hl.monitor({
    output   = "DP-4",
    mode     = "1600x900@60.000",
    position = "auto",
    scale    = "1",
    vrr      = 0,
})


---- MY PROGRAMS ----

local terminal    = "foot"
local fileManager = "dolphin"
local menu        = "bash ~/.config/hypr/wmenu.sh"
local snip        = "bash ~/.config/hypr/snip.sh"
local emoji       = "bash ~/.config/hypr/emoji.sh"
local picker      = "bash ~/.config/hypr/picker.sh"
local power       = "bash ~/.config/hypr/power.sh"

---- AUTOSTART ----

---hl.on("hyprland.start", function()
---
---end)

---- ENVIRONMENT VARIABLES ----

hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")

----- PERMISSIONS -----

-- hl.config({
--   ecosystem = {
--     enforce_permissions = true,
--   },
-- })

-- hl.permission("/usr/(bin|local/bin)/grim", "screencopy", "allow")
-- hl.permission("/usr/(lib|libexec|lib64)/xdg-desktop-portal-hyprland", "screencopy", "allow")
-- hl.permission("/usr/(bin|local/bin)/hyprpm", "plugin", "allow")

---- LOOK AND FEEL ----

hl.config({
    xwayland = {
        force_zero_scaling = true,
        use_nearest_neighbor = false,
    },
    general = {
        gaps_in          = 5,
        gaps_out         = 10,
        border_size      = 0,
        col              = {
            active_border   = { colors = { "rgba(33ccffee)", "rgba(00ff99ee)" }, angle = 45 },
            inactive_border = "rgba(595959aa)",
        },
        resize_on_border = false,
        allow_tearing    = true,
        layout           = "dwindle",
    },

    decoration = {
        rounding         = 10,
        rounding_power   = 0,
        active_opacity   = 1.0,
        inactive_opacity = 1.0,
        shadow           = {
            enabled = false,
        },
        blur             = {
            enabled = false,
        },
    },
    animations = {
        enabled = false,
    },
})

hl.config({
    dwindle = {
        preserve_split = true, -- You probably want this
        force_split = 2,
    },
})

----  MISC  ----

hl.config({
    misc = {
        disable_splash_rendering = true,
        force_default_wallpaper  = 0,    -- Set to 0 or 1 to disable the anime mascot wallpapers
        disable_hyprland_logo    = true, -- If true disables the random hyprland logo / anime girl background. :(
    },
})

---- INPUT ----

hl.config({
    input = {
        kb_layout     = "us",
        kb_variant    = "",
        kb_model      = "",
        kb_options    = "",
        kb_rules      = "",
        repeat_rate   = 40,
        repeat_delay  = 300,
        follow_mouse  = 1,
        sensitivity   = 0,
        accel_profile = "flat",
        touchpad      = {
            natural_scroll = false,
        },
    },
})

hl.config({
    cursor = {
        default_monitor = "DP-5",
        min_refresh_rate = 144,
    },
})

---- KEYBINDINGS ----

local mainMod = "SUPER"
hl.bind(mainMod .. " + Return", hl.dsp.exec_cmd(terminal), { repeating = true })
hl.bind(mainMod .. " + W", hl.dsp.window.close(), { repeating = true })
hl.bind(mainMod .. " + SHIFT + W", hl.dsp.window.kill())
hl.bind(mainMod .. " + M",
    hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))
hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }), { repeating = true })
hl.bind(mainMod .. " + A", hl.dsp.window.fullscreen({ mode = "maximized" }), { repeating = true })
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen({ action = "toggle" }), { repeating = true })
hl.bind(mainMod .. " + Space", hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. " + Escape", hl.dsp.exec_cmd(power))
hl.bind(mainMod .. " + P", hl.dsp.exec_cmd(picker))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(emoji))
hl.bind(mainMod .. " + S", hl.dsp.exec_cmd("hyprshot --freeze -m region --clipboard-only"),
    { locked = true, repeating = true })
hl.bind(mainMod .. " + left", hl.dsp.focus({ direction = "left" }), { repeating = true })
hl.bind(mainMod .. " + H", hl.dsp.focus({ direction = "left" }), { repeating = true })
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }), { repeating = true })
hl.bind(mainMod .. " + L", hl.dsp.focus({ direction = "right" }), { repeating = true })
hl.bind(mainMod .. " + up", hl.dsp.focus({ direction = "up" }), { repeating = true })
hl.bind(mainMod .. " + K", hl.dsp.focus({ direction = "up" }), { repeating = true })
hl.bind(mainMod .. " + down", hl.dsp.focus({ direction = "down" }), { repeating = true })
hl.bind(mainMod .. " + J", hl.dsp.focus({ direction = "down" }), { repeating = true })
hl.bind(mainMod .. " + SHIFT + left", hl.dsp.window.swap({ direction = "left" }), { repeating = true })
hl.bind(mainMod .. " + SHIFT + H", hl.dsp.window.swap({ direction = "left" }), { repeating = true })
hl.bind(mainMod .. " + SHIFT + right", hl.dsp.window.swap({ direction = "right" }), { repeating = true })
hl.bind(mainMod .. " + SHIFT + L", hl.dsp.window.swap({ direction = "right" }), { repeating = true })
hl.bind(mainMod .. " + SHIFT + up", hl.dsp.window.swap({ direction = "up" }), { repeating = true })
hl.bind(mainMod .. " + SHIFT + K", hl.dsp.window.swap({ direction = "up" }), { repeating = true })
hl.bind(mainMod .. " + SHIFT + down", hl.dsp.window.swap({ direction = "down" }), { repeating = true })
hl.bind(mainMod .. " + SHIFT + J", hl.dsp.window.swap({ direction = "down" }), { repeating = true })
hl.bind(mainMod .. " + CTRL + left", hl.dsp.window.move({ direction = "left" }), { repeating = true })
hl.bind(mainMod .. " + CTRL + H", hl.dsp.window.move({ direction = "left" }), { repeating = true })
hl.bind(mainMod .. " + CTRL + right", hl.dsp.window.move({ direction = "right" }), { repeating = true })
hl.bind(mainMod .. " + CTRL + L", hl.dsp.window.move({ direction = "right" }), { repeating = true })
hl.bind(mainMod .. " + CTRL + up", hl.dsp.window.move({ direction = "up" }), { repeating = true })
hl.bind(mainMod .. " + CTRL + K", hl.dsp.window.move({ direction = "up" }), { repeating = true })
hl.bind(mainMod .. " + CTRL + down", hl.dsp.window.move({ direction = "down" }), { repeating = true })
hl.bind(mainMod .. " + CTRL + J", hl.dsp.window.move({ direction = "down" }), { repeating = true })
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
    hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end
hl.bind(mainMod .. " + Tab", hl.dsp.focus({ workspace = "e+1" }), { repeating = true })
hl.bind(mainMod .. " + SHIFT + Tab", hl.dsp.focus({ workspace = "e-1" }), { repeating = true })
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })
-- TODO: add bind to reset resize
hl.bind(mainMod .. " + comma", hl.dsp.window.resize({ x = -10, y = 0, relative = true }), { repeating = true })
hl.bind(mainMod .. " + period", hl.dsp.window.resize({ x = 10, y = 0, relative = true }), { repeating = true })
hl.bind(mainMod .. " + minus", hl.dsp.window.resize({ x = 0, y = -10, relative = true }), { repeating = true })
hl.bind(mainMod .. " + equal", hl.dsp.window.resize({ x = 0, y = 10, relative = true }), { repeating = true })
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),
    { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),
    { locked = true, repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
    { locked = true, repeating = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
    { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { locked = true, repeating = true })
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })

---- WINDOWS AND WORKSPACES ----

-- Pin workspaces to monitors
for i = 1, 8 do
    hl.workspace_rule({
        workspace = tostring(i),
        monitor   = "DP-5",
    })
end

hl.workspace_rule({
    workspace = "9",
    monitor   = "DP-4",
})

hl.window_rule({
    -- Ignore maximize requests from all apps. You'll probably like this.
    name           = "suppress-maximize-events",
    match          = { class = ".*" },
    suppress_event = "maximize",
})

hl.window_rule({
    -- Fix some dragging issues with XWayland
    name     = "fix-xwayland-drags",
    match    = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },
    no_focus = true,
})

hl.window_rule({
    match = { fullscreen = "true" }, immediate = true
})
