  abstract_bushes = {}
  
  minetest.register_node("bushes:bushbranches1", {
    description = "bushbranches1",
    drawtype = "nodebox",
    tiles = {
        "blank.png",
        "BushBranches1sm5.png",
        "BushBranches1sm5.png",
        "BushBranches1sm5.png",
        "BushBranches1sm5.png",
        "blank.png"
    },
    node_box = {
        type = "fixed",
        fixed = {
--       {left,bottom,front,right,top,back}
            {0, -1/2, -1/2, 0, 1/2, 1/2},
            {-1/2, -1/2, 0, 1/2, 1/2, 0}
        },
    },
    selection_box = {
        type = "fixed",
        fixed = {-1/2, -1/2, -1/2, 1/2, 1/2, 1/2},
    },
    inventory_image = "BlockBranch1Rsm.png",
    paramtype = "light",
		paramtype2 = "facedir",
			sunlight_propagates = true,
    groups = {tree=1, snappy=3, flammable=2, leaves=1},
    sounds = default.node_sound_leaves_defaults(),
})

 


minetest.register_node("bushes:bushbranches2", {
    description = "bushbranches2",
    drawtype = "nodebox",
    tiles = {
        "blank.png",
        "BlockBranch1Lsm.png",
        "BlockBranch1Lsm.png",
        "BlockBranch1Rsm.png",
        "BlockBranch1Rsm.png",
        "blank.png"
    },
    node_box = {
        type = "fixed",
        fixed = {
--       {left,bottom,front,right,top,back}
            {0, -1/2, -1/2, 0, 1/2, 1/2},
            {-1/2, -1/2, 0, 1/2, 1/2, 0}
        },
    },
    selection_box = {
        type = "fixed",
        fixed = {-1/2, -1/2, -1/2, 1/2, 1/2, 1/2},
    },
    inventory_image = "BlockBranch1Rsm.png",
    paramtype = "light",
		paramtype2 = "facedir",
			sunlight_propagates = true,
    groups = {tree=1, snappy=3, flammable=2, leaves=1},
    sounds = default.node_sound_leaves_defaults(),
})
		
	minetest.register_node("bushes:bushbranches3", {
    description = "bushbranches3",
    drawtype = "nodebox",
    tiles = {
        "blank.png",
        "BlockBranch1Rsm.png",
        "BlockBranch1Rsm.png",
        "BlockBranch1Lsm.png",
        "BlockBranch1Lsm.png",
        "blank.png"
    },
    node_box = {
        type = "fixed",
        fixed = {
--       {left,bottom,front,right,top,back}
            {0, -1/2, -1/2, 0, 1/2, 1/2},
            {-1/2, -1/2, 0, 1/2, 1/2, 0}
        },
    },
    selection_box = {
        type = "fixed",
        fixed = {-1/2, -1/2, -1/2, 1/2, 1/2, 1/2},
    },
    inventory_image = "BlockBranch1Rsm.png",
    paramtype = "light",
		paramtype2 = "facedir",
			sunlight_propagates = true,
    groups = {tree=1, snappy=3, flammable=2, leaves=1},
    sounds = default.node_sound_leaves_defaults(),
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
		
abstract_bushes.grow_bush = function(pos)
	local right_here = {x=pos.x, y=pos.y+1, z=pos.z}
	local above_right_here = {x=pos.x, y=pos.y+2, z=pos.z}
	
	local bush_branch_type = math.random(1,3)
	if minetest.get_node(right_here).name == "air"  -- instead of check_air = true,
	or minetest.get_node(right_here).name == "default:junglegrass" then
		minetest.add_node(right_here, {name="bushes:bushbranches"..bush_branch_type})
		minetest.add_node(above_right_here, {name="bushes:BushLeaves"})
		local chance_of_high_leaves = math.random(1,10)
		if chance_of_high_leaves> 5 then
			local two_above_right_here = {x=pos.x, y=pos.y+3, z=pos.z}
			minetest.add_node(two_above_right_here, {name="bushes:BushLeaves"})
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
    max_count = 10,
    rarity = 101 - 3,
    min_elevation = 1, -- above sea level
	plantlife_limit = -0.9,
	check_air = false,
  },
  "abstract_bushes.grow_bush"
)		
	 
		--http://dev.minetest.net/Node_Drawtypes
		
		
		