 
minetest.register_node("saplings:sapling_top", {
	description = "SaplingTop",
	drawtype = "plantlike",
	tiles = {"sapling16xa.png"},
	inventory_image = "sapling16xa.png",
	wield_image = "sapling16xa.png",
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

 
minetest.register_node("saplings:sapling_middle", {
	description = "SaplingMiddle",
	drawtype = "plantlike",
	tiles = {"sapling16xb.png"},
	inventory_image = "sapling16xb.png",
	wield_image = "sapling16xb.png",
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


 
minetest.register_node("saplings:sapling_bottom", {
	description = "SaplingBottom",
	drawtype = "plantlike",
	tiles = {"sapling16xc.png"},
	inventory_image = "sapling16xc.png",
	wield_image = "sapling16xc.png",
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
 