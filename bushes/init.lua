-- Bushes Mod by Mossmanikin, Evergreen, & Neuromancer
-- The initial code for this was taken from Mossmanikin's Grasses Mod, then heavilly modified by Neuromancer for this mod.
-- Mossmanikin also greatly helped with providing samples for coding.
-- bush leaf textures are cc-by-sa 3.0.  from VannessaE's moretrees mod.  (Leaf texture created by RealBadAngel or VanessaE)
-- Branch textures created by Neuromancer.
-- Licence for Code and Non-Bush leaf code is WTFPL.
 
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
            {0, -1/2, -1/2, -1/4, 1/2, 1/2},
            {0, -1/2, -1/2, 1/4, 1/2, 1/2}
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
            {0, -1/2, -1/2, -1/4, 1/2, 1/2},
            {0, -1/2, -1/2, 1/4, 1/2, 1/2}
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
            {0, -1/2, -1/2, -1/4, 1/2, 1/2},
            {0, -1/2, -1/2, 1/4, 1/2, 1/2}
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
	
	minetest.register_node("bushes:BushLeaves1", {
    description = "BushLeaves1",
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

	minetest.register_node("bushes:BushLeaves2", {
    description = "BushLeaves2",
    tiles = {
    "moretrees_pine_leaves.png" },
    inventory_image = "moretrees_pine_leaves.png",
    --is_ground_content = true,
        paramtype = "light",
    paramtype2 = "facedir",
    groups = {		snappy=3,
		flammable=2,
		attached_node=1},
    sounds = default.node_sound_stone_defaults(),    
})	
		
abstract_bushes.grow_bush = function(pos)
	local leaf_type = math.random(1,2)	
	local bush_side_height = math.random(0,1)
		local chance_of_bush_node_right = math.random(1,10)
		if chance_of_bush_node_right> 8 then
			local right_pos = {x=pos.x+1, y=pos.y+bush_side_height, z=pos.z}
			abstract_bushes.grow_bush_node(right_pos,3,leaf_type)
		end
		local chance_of_bush_node_left = math.random(1,10)
		if chance_of_bush_node_left> 8 then
			bush_side_height = math.random(0,1)
			local left_pos = {x=pos.x-1, y=pos.y+bush_side_height, z=pos.z}
			abstract_bushes.grow_bush_node(left_pos,1,leaf_type)
		end
		local chance_of_bush_node_front = math.random(1,10)
		if chance_of_bush_node_front> 8 then
			bush_side_height = math.random(0,1)
			local front_pos = {x=pos.x, y=pos.y+bush_side_height, z=pos.z+1}
			abstract_bushes.grow_bush_node(front_pos,2,leaf_type)
		end		
		local chance_of_bush_node_back = math.random(1,10)
		if chance_of_bush_node_back> 8 then
			bush_side_height = math.random(0,1)
			local back_pos = {x=pos.x, y=pos.y+bush_side_height, z=pos.z-1}
			abstract_bushes.grow_bush_node(back_pos,0,leaf_type)
		end
		
abstract_bushes.grow_bush_node(pos,5,leaf_type)
end

abstract_bushes.grow_bush_node = function(pos,dir, leaf_type)
	
	
	local right_here = {x=pos.x, y=pos.y+1, z=pos.z}
	local above_right_here = {x=pos.x, y=pos.y+2, z=pos.z}
	
	--local bush_branch_type = math.random(1,3)
	local bush_branch_type = 2
	if dir == 5 then
		bush_branch_type = 1
		dir = 1
	end
	
	if minetest.get_node(right_here).name == "air"  -- instead of check_air = true,
	or minetest.get_node(right_here).name == "default:junglegrass" then
		minetest.add_node(right_here, {name="bushes:bushbranches"..bush_branch_type , param2=dir})
						--minetest.chat_send_all("leaf_type: (" .. leaf_type .. ")")
		minetest.add_node(above_right_here, {name="bushes:BushLeaves"..leaf_type})
		local chance_of_high_leaves = math.random(1,10)
		if chance_of_high_leaves> 5 then
			local two_above_right_here = {x=pos.x, y=pos.y+3, z=pos.z}
							--minetest.chat_send_all("leaf_type: (" .. leaf_type .. ")")
			minetest.add_node(two_above_right_here, {name="bushes:BushLeaves"..leaf_type})
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
    max_count = 15,  --10,15
    rarity = 101 - 4,  --3,4
    min_elevation = 1, -- above sea level
	plantlife_limit = -0.9,
	check_air = false,
  },
  "abstract_bushes.grow_bush"
)		
	 
		--http://dev.minetest.net/Node_Drawtypes
		
		
		