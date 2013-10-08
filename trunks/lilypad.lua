minetest.register_alias("trunks:lilypad",	"trunks:lilypad_1")

local flat_stick 	= {-1/2, -1/2, -1/2, 1/2, -7/16, 1/2}
local NoDe 			= { {1}, {2}, {3}, {4} }

for i in pairs(NoDe) do
	local NR = NoDe[i][1]
	local iNV = NR - 1
	minetest.register_node("trunks:lilypad_"..NR, {
		description = "LilyPad",
		inventory_image = "trunks_lilypad_"..NR..".png",
		wield_image = "trunks_lilypad_"..NR..".png",
		drawtype = "nodebox",
		tiles = { "trunks_lilypad_"..NR..".png" },
		paramtype = "light",
		paramtype2 = "facedir",
		walkable = false,
		sunlight_propagates = true,
		buildable_to = true,
		node_box = {type = "fixed", fixed = flat_stick},
		groups = {
			dig_immediate=3, -- almost literally immediate, like just picking up
			attached_node=1,
			not_in_creative_inventory=iNV
		},
		drop = "trunks:lilypad_1",
		sounds = default.node_sound_leaves_defaults(),
		liquids_pointable = true,
		on_place = function(itemstack, placer, pointed_thing)
			local pt = pointed_thing
			local direction = minetest.dir_to_facedir(placer:get_look_dir())
			if minetest.get_node(pt.above).name=="air" then
				minetest.set_node(pt.above, {name="trunks:lilypad_"..math.random(1,3), param2=direction})
				if not minetest.setting_getbool("creative_mode") then
					itemstack:take_item()
				end
				return itemstack
			end
		end,
	})
end


-----------------------------------------------------------------------------------------------
-- LilyPads
-----------------------------------------------------------------------------------------------
abstract_trunks.place_lilypad = function(pos)
	local right_here = {x=pos.x, y=pos.y+1, z=pos.z}
	minetest.add_node(right_here, {name="trunks:lilypad_"..math.random(1,3), param2=math.random(0,3)})
end

plantslib:register_generate_plant({
    surface = {"default:water_source"},
    max_count = Twigs_on_water_Max_Count,
    rarity = Twigs_on_water_Rarity,
    min_elevation = 1,
	max_elevation = 40,
	near_nodes = {"default:dirt_with_grass"},
	near_nodes_size = 3,
	near_nodes_vertical = 1,
	near_nodes_count = 1,
    plantlife_limit = -0.9,
  },
  "abstract_trunks.place_lilypad"
)
