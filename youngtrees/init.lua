 abstract_youngtrees = {} 
minetest.register_node("youngtrees:youngtree_top", {
	description = "youngtreeTop",
	drawtype = "plantlike",
	tiles = {"youngtree16xa.png"},
	inventory_image = "youngtree16xa.png",
	wield_image = "youngtree16xa.png",
	paramtype = "light",
	walkable = false,
	is_ground_content = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.5, 0.3}
	},
	groups = {snappy=3,flammable=2},
	sounds = default.node_sound_leaves_defaults(),
})

 
minetest.register_node("youngtrees:youngtree_middle", {
	description = "youngtreeMiddle",
	drawtype = "plantlike",
	tiles = {"youngtree16xb.png"},
	inventory_image = "youngtree16xb.png",
	wield_image = "youngtree16xb.png",
	paramtype = "light",
	walkable = false,
	is_ground_content = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.5, 0.3}
	},
	groups = {snappy=3,flammable=2},
	sounds = default.node_sound_leaves_defaults(),
})


 
minetest.register_node("youngtrees:youngtree_bottom", {
	description = "youngtreeBottom",
	drawtype = "plantlike",
	tiles = {"youngtree16xc.png"},
	inventory_image = "youngtree16xc.png",
	wield_image = "youngtree16xc.png",
	paramtype = "light",
	walkable = false,
	is_ground_content = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.5, 0.3}
	},
	groups = {snappy=3,flammable=2},
	sounds = default.node_sound_leaves_defaults(),
})
 
 
 abstract_youngtrees.grow_youngtree = function(pos)
	local height = math.random(1,3)	
	abstract_youngtrees.grow_youngtree_node(pos,height)
end

abstract_youngtrees.grow_youngtree_node = function(pos, height)
	
	
	local right_here = {x=pos.x, y=pos.y+1, z=pos.z}
	local above_right_here = {x=pos.x, y=pos.y+2, z=pos.z}
	
	if minetest.get_node(right_here).name == "air"  -- instead of check_air = true,
	or minetest.get_node(right_here).name == "default:junglegrass" then
		if height == 1 then
				minetest.add_node(right_here, {name="youngtrees:youngtree_top"})
		end
		if height == 2 then
				minetest.add_node(right_here, {name="youngtrees:youngtree_bottom"})
				minetest.add_node(above_right_here, {name="youngtrees:youngtree_top"})
		end	
		if height == 3 then
				local two_above_right_here = {x=pos.x, y=pos.y+3, z=pos.z}
				minetest.add_node(right_here, {name="youngtrees:youngtree_bottom"})
				minetest.add_node(above_right_here, {name="youngtrees:youngtree_middle"})
				minetest.add_node(two_above_right_here, {name="youngtrees:youngtree_top"})
		end		
	end
end


plantslib:register_generate_plant({
    surface = {
		"default:dirt_with_grass", 
		"stoneage:grass_with_silex",
		"sumpf:peat",
		"sumpf:sumpf"
	},
    max_count = 55,  --10,15
    rarity = 101 - 4,  --3,4
    min_elevation = 1, -- above sea level
	plantlife_limit = -0.9,
	check_air = false,
  },
  "abstract_youngtrees.grow_youngtree"
)		
