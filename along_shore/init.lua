-----------------------------------------------------------------------------------------------
local title		= "Along the Shore"
local version 	= "0.0.2"
local mname		= "along_shore"
-----------------------------------------------------------------------------------------------

abstract_along_shore = {}

dofile(minetest.get_modpath("along_shore").."/along_shore_settings.txt")
dofile(minetest.get_modpath("along_shore").."/generating.lua")
dofile(minetest.get_modpath("along_shore").."/nodes.lua")

-----------------------------------------------------------------------------------------------
print("[Mod] "..title.." ["..version.."] ["..mname.."] Loaded...")
-----------------------------------------------------------------------------------------------