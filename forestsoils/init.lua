-----------------------------------------------------------------------------------------------
local title		= "Forrest Soils"
local version 	= "0.0.3"
local mname		= "forestsoils"
-----------------------------------------------------------------------------------------------

abstract_forestsoils = {}

dofile(minetest.get_modpath("forestsoils").."/nodes.lua")
--dofile(minetest.get_modpath("forestsoils").."/generate.lua")
--dofile(minetest.get_modpath("forestsoils").."/abms.lua")
dofile(minetest.get_modpath("forestsoils").."/generating.lua")

-----------------------------------------------------------------------------------------------
print("[Mod] "..title.." ["..version.."] ["..mname.."] Loaded...")
-----------------------------------------------------------------------------------------------