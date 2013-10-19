minetest.register_node("saplings:sapling_top", {
	description = "SaplingTop",
	drawtype = "plantlike",
	visual_scale = 1,
	paramtype = "light",
	tiles = {"sapling16xa.png"},
	inventory_image = "sapling16xa.png",
	walkable = false,
	groups = {
		snappy=3,
		flammable=2,
		attached_node=1--,
		--not_in_creative_inventory=1
	},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-7/16, -1/2, -7/16, 7/16, 0, 7/16},
	},
	--drop = "ferns:fern_01",
})

minetest.register_node("saplings:sapling_middle", {
	description = "SaplingMiddle",
	drawtype = "plantlike",
	visual_scale = 1,
	paramtype = "light",
	tiles = {"sapling16xb.png"},
	inventory_image = "sapling16xb.png",
	walkable = false,
	groups = {
		snappy=3,
		flammable=2,
		attached_node=1--,
		--not_in_creative_inventory=1
	},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-7/16, -1/2, -7/16, 7/16, 0, 7/16},
	},
	--drop = "ferns:fern_01",
})

minetest.register_node("saplings:sapling_bottom", {
	description = "SaplingBottom",
	drawtype = "plantlike",
	visual_scale = 1,
	paramtype = "light",
	tiles = {"sapling16xc.png"},
	inventory_image = "sapling16xc.png",
	walkable = false,
	groups = {
		snappy=3,
		flammable=2,
		attached_node=1--,
		--not_in_creative_inventory=1
	},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-7/16, -1/2, -7/16, 7/16, 0, 7/16},
	},
	--drop = "ferns:fern_01",
})