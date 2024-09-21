mcl_glass_doors = {}

local this = minetest.get_current_modname()
local path = minetest.get_modpath(this)

dofile(path.."/api_doors.lua") -- Doors API
dofile(path.."/register.lua") -- Register builtin doors and trapdoors
dofile(path.."/alias.lua") -- Legacy aliases
