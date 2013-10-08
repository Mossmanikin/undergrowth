-----------------------------------------------------------------------------------------------
local title		= "Trunks"
local version 	= "0.1.0"
local mname		= "trunks"
-----------------------------------------------------------------------------------------------

abstract_trunks = {}

dofile(minetest.get_modpath("trunks").."/trunks_settings.txt")
dofile(minetest.get_modpath("trunks").."/generating.lua")
dofile(minetest.get_modpath("trunks").."/nodes.lua")
dofile(minetest.get_modpath("trunks").."/crafting.lua")
dofile(minetest.get_modpath("trunks").."/lilypad.lua")

-----------------------------------------------------------------------------------------------
print("[Mod] "..title.." ["..version.."] ["..mname.."] Loaded...")
-----------------------------------------------------------------------------------------------