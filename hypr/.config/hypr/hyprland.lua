function src(path)
    local status, err = pcall(dofile, path)
    if status then
        print("SUCCESSFULLY LOADED: " .. path)
    else
        print("FAILURE TO LOAD: " .. path .. " | Error: " .. tostring(err))
    end
end

local dir = os.getenv("HOME") .. "/.config/hypr/"

local modules = {
    "plugins.lua",
    "monitors.lua",
    "variables.lua",
    "autostart.lua",
    "env_variables.lua",
    "permissions.lua",
    "config.lua",
    "devices.lua",
    "binds.lua",
    "rules.lua"
}

for _, module in ipairs(modules) do
    src(dir .. module)
end
