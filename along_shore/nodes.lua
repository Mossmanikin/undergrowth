local quite_flat = {-1/2, -1/2, -1/2, 1/2, -7/16, 1/2}
local super_flat = {-1/2, -1/2, -1/2, 1/2, -15/32--[[<-flickers if smaller]], 1/2}

-----------------------------------------------------------------------------------------------
-- LiLy PaDS
-----------------------------------------------------------------------------------------------
minetest.register_alias("trunks:lilypad",	"along_shore:lilypad_1")
local LiLy_PaDS = { {1}, {2}, {3}, {4} }

for i in pairs(LiLy_PaDS) do
	local NR = LiLy_PaDS[i][1]
	local iNV = NR - 1
	
	minetest.register_alias("trunks:lilypad_"..NR,	"along_shore:lilypad_"..NR)
	
	minetest.register_node("along_shore:lilypads_"..NR, {
		description = "Lily Pad",
		drawtype = "nodebox",
		tiles = { 
			"along_shore_lilypads_"..NR..".png",
			"along_shore_lilypads_"..NR..".png^[transformFY", -- mirror
			"along_shore_empty.png"
		},
		inventory_image = "along_shore_lilypads_"..NR..".png",
		wield_image = "along_shore_lilypads_"..NR..".png",
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		buildable_to = true,
		walkable = false,
		node_box = {type = "fixed", fixed = super_flat},
		selection_box = {type = "fixed", fixed = quite_flat},
		groups = {dig_immediate=3,not_in_creative_inventory=iNV},
		drop = "along_shore:lilypads_1",
		sounds = default.node_sound_leaves_defaults(),
		liquids_pointable = true,
		on_place = function(itemstack, placer, pointed_thing)
			local pt = pointed_thing
			local direction = minetest.dir_to_facedir(placer:get_look_dir())
			if minetest.get_node(pt.above).name=="air" then
				minetest.set_node(pt.above, {name="along_shore:lilypads_"..math.random(1,3), param2=direction})
				if not minetest.setting_getbool("creative_mode") then
					itemstack:take_item()
				end
				return itemstack
			end
		end,
	})
end

-----------------------------------------------------------------------------------------------
-- PoND SCuM
-----------------------------------------------------------------------------------------------
local PoND_SCuM = { {1} }

for i in pairs(PoND_SCuM) do
	local NR = PoND_SCuM[i][1]
	local iNV = NR - 1
	minetest.register_node("along_shore:pondscum_"..NR, {
		description = "Pond Scum",
		drawtype = "signlike", -- idea here is: you can smack it against a wall and it stays there
		tiles = { 
			"along_shore_pondscum_"..NR..".png",
			"along_shore_pondscum_"..NR..".png^[transformFY", -- mirror
			"along_shore_empty.png"
		},
		inventory_image = "along_shore_pondscum_"..NR..".png",
		wield_image = "along_shore_pondscum_"..NR..".png",
		paramtype = "light",
		paramtype2 = "wallmounted",
		sunlight_propagates = true,
		buildable_to = true,
		walkable = false,
		selection_box = {type = "wallmounted"},
		groups = {dig_immediate=2,not_in_creative_inventory=iNV},
		drop = "along_shore:pondscum_1",
		sounds = default.node_sound_leaves_defaults(),
		liquids_pointable = true,
	})
end