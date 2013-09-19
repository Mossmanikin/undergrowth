minetest.register_node("bushes:bushbranches", {
	description = "BushBranches",
	drawtype = "plantlike",
	paramtype = "light",
	tiles = {"BushBranches1sm5.png"},
	inventory_image = "BushBranches1sm5.png",
	walkable = false,
	groups = {
		snappy=3,
		flammable=2,
		attached_node=1
	},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.5, 0.3}
	},
})


minetest.register_node("bushes:bushbranches2", {
	description = "BushBranches2",
	drawtype = "plantlike",
	paramtype = "light",
	tiles = {"BlockBranch1Rsm.png"},
	inventory_image = "BlockBranch1Rsm.png",
	walkable = false,
	groups = {
		snappy=3,
		flammable=2,
		attached_node=1
	},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.5, 0.3}
	},
})

 minetest.register_node("bushes:bushbranches3", {
	description = "BushBranches3",
	drawtype = "plantlike",
	paramtype = "light",
	tiles = {"BlockBranch1Lsm.png"},
	inventory_image = "BlockBranch1Lsm.png",
	walkable = false,
	groups = {
		snappy=3,
		flammable=2,
		attached_node=1
	},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.5, 0.3}
	},
})

minetest.register_node("bushes:BushLeaves", {
    description = "BushLeaves",
    tiles = {
    "moretrees_sequoia_leaves.png" },
    inventory_image = "moretrees_sequoia_leaves.png",
    --is_ground_content = true,
        paramtype = "light",
    paramtype2 = "facedir",
    groups = {		snappy=3,
		flammable=2,
		attached_node=1},
    sounds = default.node_sound_stone_defaults(),    
})
 
 
	
		
		
		
	 
		--http://dev.minetest.net/Node_Drawtypes
		
		
		