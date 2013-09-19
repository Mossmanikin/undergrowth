--Rocks

minetest.register_node("cavestuff:pebble_1",{
	drawtype = "nodebox",
	description = "Pebble",
    tiles = {"undergrowth_pebble.png"},
    paramtype = "light",
	paramtype2 = "facedir",
    groups = {cracky=3, stone=1},
    node_box = {
        type = "fixed",
        fixed = {
--			{ left, bottom, front,  right, top ,  back}
			{-5/16, -2/16, -3/16,  1/16, -1/16, -1/16},
			{-4/16, -2/16, -4/16,  0   , -1/16,  0   },
--			{ left, bottom, front,  right, top ,  back}
			{-7/16, -7/16, -3/16, -6/16, -3/16,  1/16},
			{-6/16, -7/16, -4/16, -5/16, -3/16,  2/16},
			{-5/16, -7/16, -5/16,  3/16, -3/16,  3/16},
			{-4/16, -7/16, -6/16,  1/16, -3/16, -5/16},
			{-3/16, -7/16,  3/16,  3/16, -3/16,  4/16},
			{ 0   , -7/16,  4/16,  3/16, -3/16,  5/16},
			{ 3/16, -7/16, -4/16,  4/16, -3/16,  5/16},
			{ 4/16, -7/16, -3/16,  5/16, -3/16,  4/16},
			{ 5/16, -7/16, -1/16,  6/16, -3/16,  2/16},
--			{ left, bottom, front,  right, top ,  back}
			{-6/16, -8/16, -3/16,  3/16, -2/16,  0   },
			{-5/16, -8/16, -4/16,  2/16, -2/16,  1/16},
			{-4/16, -8/16, -5/16,  0   , -2/16,  2/16},
			{-2/16, -8/16, -2/16,  4/16, -2/16,  3/16},
			{ 0   , -8/16,  3/16,  3/16, -2/16,  4/16},
			{ 4/16, -8/16, -1/16,  5/16, -2/16,  2/16},
        },
    },
    selection_box = {
        type = "fixed",
        fixed = {-7/16, -1/2, -6/16, 6/16, -1/16, 5/16},
    },
    on_place = function(itemstack, placer, pointed_thing)
		-- place a random pebble node
		local stack = ItemStack("cavestuff:pebble_"..math.random(1,2))
		local ret = minetest.item_place(stack, placer, pointed_thing)
		return ItemStack("cavestuff:pebble_1 "..itemstack:get_count()-(1-ret:get_count()))
	end,
    sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("cavestuff:pebble_2",{
	drawtype = "nodebox",
	drop = "cavestuff:pebble_1",
    tiles = {"undergrowth_pebble.png"},
    paramtype = "light",
	paramtype2 = "facedir",
    groups = {cracky=3, stone=1, not_in_creative_inventory=1},
    node_box = {
        type = "fixed",
        fixed = {
--			{ left, bottom, front,  right, top ,  back}
			{-5/16, -1/16, -3/16,  1/16,  0   , -1/16},
			{-4/16, -1/16, -4/16,  0   ,  0   ,  0   },
--			{ left, bottom, front,  right, top ,  back}
			{-7/16, -7/16, -3/16, -6/16, -2/16,  1/16},
			{-6/16, -7/16, -4/16, -5/16, -2/16,  2/16},
			{-5/16, -7/16, -5/16,  3/16, -2/16,  3/16},
			{-4/16, -7/16, -6/16,  1/16, -2/16, -5/16},
			{-3/16, -7/16,  3/16,  3/16, -2/16,  4/16},
			{ 0   , -7/16,  4/16,  3/16, -2/16,  5/16},
			{ 3/16, -7/16, -4/16,  4/16, -2/16,  5/16},
			{ 4/16, -7/16, -3/16,  5/16, -2/16,  4/16},
			{ 5/16, -7/16, -1/16,  6/16, -2/16,  2/16},
--			{ left, bottom, front,  right, top ,  back}
			{-6/16, -8/16, -3/16,  3/16, -1/16,  0   },
			{-5/16, -8/16, -4/16,  2/16, -1/16,  1/16},
			{-4/16, -8/16, -5/16,  0   , -1/16,  2/16},
			{-2/16, -8/16, -2/16,  4/16, -1/16,  3/16},
			{ 0   , -8/16,  3/16,  3/16, -1/16,  4/16},
			{ 4/16, -8/16, -1/16,  5/16, -1/16,  2/16},
        },
    },
    selection_box = {
        type = "fixed",
        fixed = {-7/16, -1/2, -6/16, 6/16, 0, 5/16},
    },
    sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("cavestuff:desert_pebble_1",{
	drawtype = "nodebox",
	description = "Desert Pebble",
    tiles = {"default_desert_stone.png"},
    paramtype = "light",
	paramtype2 = "facedir",
    groups = {cracky=3, stone=1},
    node_box = {
        type = "fixed",
        fixed = {
--			{ left, bottom, front,  right, top ,  back}
			{-5/16, -2/16, -3/16,  1/16, -1/16, -1/16},
			{-4/16, -2/16, -4/16,  0   , -1/16,  0   },
--			{ left, bottom, front,  right, top ,  back}
			{-7/16, -7/16, -3/16, -6/16, -3/16,  1/16},
			{-6/16, -7/16, -4/16, -5/16, -3/16,  2/16},
			{-5/16, -7/16, -5/16,  3/16, -3/16,  3/16},
			{-4/16, -7/16, -6/16,  1/16, -3/16, -5/16},
			{-3/16, -7/16,  3/16,  3/16, -3/16,  4/16},
			{ 0   , -7/16,  4/16,  3/16, -3/16,  5/16},
			{ 3/16, -7/16, -4/16,  4/16, -3/16,  5/16},
			{ 4/16, -7/16, -3/16,  5/16, -3/16,  4/16},
			{ 5/16, -7/16, -1/16,  6/16, -3/16,  2/16},
--			{ left, bottom, front,  right, top ,  back}
			{-6/16, -8/16, -3/16,  3/16, -2/16,  0   },
			{-5/16, -8/16, -4/16,  2/16, -2/16,  1/16},
			{-4/16, -8/16, -5/16,  0   , -2/16,  2/16},
			{-2/16, -8/16, -2/16,  4/16, -2/16,  3/16},
			{ 0   , -8/16,  3/16,  3/16, -2/16,  4/16},
			{ 4/16, -8/16, -1/16,  5/16, -2/16,  2/16},
        },
    },
    selection_box = {
        type = "fixed",
        fixed = {-7/16, -1/2, -6/16, 6/16, -1/16, 5/16},
    },
    on_place = function(itemstack, placer, pointed_thing)
		-- place a random pebble node
		local stack = ItemStack("cavestuff:desert_pebble_"..math.random(1,2))
		local ret = minetest.item_place(stack, placer, pointed_thing)
		return ItemStack("cavestuff:desert_pebble_1 "..itemstack:get_count()-(1-ret:get_count()))
	end,
    sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("cavestuff:desert_pebble_2",{
	drawtype = "nodebox",
	drop = "cavestuff:desert_pebble_1",
    tiles = {"default_desert_stone.png"},
    paramtype = "light",
	paramtype2 = "facedir",
    groups = {cracky=3, stone=1, not_in_creative__inventory=1},
    node_box = {
        type = "fixed",
        fixed = {
--			{ left, bottom, front,  right, top ,  back}
			{-5/16, -1/16, -3/16,  1/16,  0   , -1/16},
			{-4/16, -1/16, -4/16,  0   ,  0   ,  0   },
--			{ left, bottom, front,  right, top ,  back}
			{-7/16, -7/16, -3/16, -6/16, -2/16,  1/16},
			{-6/16, -7/16, -4/16, -5/16, -2/16,  2/16},
			{-5/16, -7/16, -5/16,  3/16, -2/16,  3/16},
			{-4/16, -7/16, -6/16,  1/16, -2/16, -5/16},
			{-3/16, -7/16,  3/16,  3/16, -2/16,  4/16},
			{ 0   , -7/16,  4/16,  3/16, -2/16,  5/16},
			{ 3/16, -7/16, -4/16,  4/16, -2/16,  5/16},
			{ 4/16, -7/16, -3/16,  5/16, -2/16,  4/16},
			{ 5/16, -7/16, -1/16,  6/16, -2/16,  2/16},
--			{ left, bottom, front,  right, top ,  back}
			{-6/16, -8/16, -3/16,  3/16, -1/16,  0   },
			{-5/16, -8/16, -4/16,  2/16, -1/16,  1/16},
			{-4/16, -8/16, -5/16,  0   , -1/16,  2/16},
			{-2/16, -8/16, -2/16,  4/16, -1/16,  3/16},
			{ 0   , -8/16,  3/16,  3/16, -1/16,  4/16},
			{ 4/16, -8/16, -1/16,  5/16, -1/16,  2/16},
        },
    },
    selection_box = {
        type = "fixed",
        fixed = {-7/16, -1/2, -6/16, 6/16, 0, 5/16},
    },
    sounds = default.node_sound_stone_defaults(),
})

--Staclactites

minetest.register_node("cavestuff:stalactite_1",{
	drawtype="nodebox",
	tiles = {"undergrowth_pebble.png"},
	groups = {cracky=3,attached_node=1},
	description = "Stalactite",
	paramtype = "light",
	paramtype2 = "wallmounted",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.187500,0.425000,-0.150003,0.162500,0.500000,0.162500},
			{-0.112500,0.162500,-0.100000,0.087500,0.475000,0.087500},
			{-0.062500,-0.275000,-0.062500,0.062500,0.500000,0.062500},
			{-0.037500,-0.837500,0.037500,0.037500,0.500000,-0.025000},
		}
	},
	
	on_place = function(itemstack, placer, pointed_thing)
		local pt = pointed_thing
		if minetest.get_node(pt.under).name=="default:stone" 
		and minetest.get_node({x=pt.under.x, y=pt.under.y-1, z=pt.under.z}).name=="air"
		and minetest.get_node({x=pt.under.x, y=pt.under.y-2, z=pt.under.z}).name=="air" then
			minetest.set_node({x=pt.under.x, y=pt.under.y-1, z=pt.under.z}, {name="undergrowth:stalactite_"..math.random(1,3)})
			if not minetest.setting_getbool("creative_mode") then
				itemstack:take_item()
			end
		end
		return itemstack
	end,
})

minetest.register_node("cavestuff:stalactite_2",{
	drawtype="nodebox",
	tiles = {"undergrowth_pebble.png"},
	groups = {cracky=3,attached_node=1,not_in_creative_inventory=1},
	drop = "cavestuff:stalactite_1",
	paramtype = "light",
	paramtype2 = "wallmounted",
	node_box = {
		type = "fixed",
		fixed = {
				{-0.187500,0.387500,-0.150003,0.162500,0.500000,0.162500},
	            {-0.112500,0.112500,-0.100000,0.087500,0.475000,0.087500},
	            {-0.062500,-0.675000,-0.062500,0.062500,0.500000,0.062500},
	            {-0.037500,-0.975000,0.037500,0.037500,0.500000,-0.025000},
		}
	},
})

minetest.register_node("cavestuff:stalactite_3",{
	drawtype="nodebox",
	tiles = {"undergrowth_pebble.png"},
	groups = {cracky=3,attached_node=1,not_in_creative_inventory=1},
	drop = "cavestuff:stalactite_1",
	paramtype = "light",
	paramtype2 = "wallmounted",
	node_box = {
	   type = "fixed",
	   fixed = {
		   {-0.187500,0.387500,-0.150003,0.162500,0.500000,0.162500},
		   {-0.112500,0.037500,-0.100000,0.087500,0.475000,0.087500},
		   {-0.062500,-0.437500,-0.062500,0.062500,0.500000,0.062500},
		   {-0.037500,-1.237500,0.037500,0.037500,0.500000,-0.025000},
	    }
    },
})

--Stalagmites




--Mapgen Stuff

minetest.register_on_generated(function(minp, maxp, seed)
	if maxp.y >= 2 and minp.y <= 0 then
		-- Generate pebbles
		local perlin1 = minetest.get_perlin(329, 3, 0.6, 100)
		-- Assume X and Z lengths are equal
		local divlen = 16
		local divs = (maxp.x-minp.x)/divlen+1;
		for divx=0,divs-1 do
		for divz=0,divs-1 do
			local x0 = minp.x + math.floor((divx+0)*divlen)
			local z0 = minp.z + math.floor((divz+0)*divlen)
			local x1 = minp.x + math.floor((divx+1)*divlen)
			local z1 = minp.z + math.floor((divz+1)*divlen)
			-- Determine pebble amount from perlin noise
			local pebble_amount = math.floor(perlin1:get2d({x=x0, y=z0}) ^ 2 * 2)
			-- Find random positions for pebbles based on this random
			local pr = PseudoRandom(seed+1)
			for i=0,pebble_amount do
				local x = pr:next(x0, x1)
				local z = pr:next(z0, z1)
				-- Find ground level (0...15)
				local ground_y = nil
				for y=30,0,-1 do
					if minetest.get_node({x=x,y=y,z=z}).name ~= "air" then
						ground_y = y
						break
					end
				end
				
				if ground_y then
					local p = {x=x,y=ground_y+1,z=z}
					local nn = minetest.get_node(p).name
					-- Check if the node can be replaced
					if minetest.registered_nodes[nn] and
						minetest.registered_nodes[nn].buildable_to then
						nn = minetest.get_node({x=x,y=ground_y,z=z}).name
						-- If desert sand, add dry shrub
						if nn == "default:dirt_with_grass" then
							minetest.set_node(p,{name="cavestuff:pebble_"..pr:next(1,2)})
						elseif nn == "default:desert_sand" then
							minetest.set_node(p,{name="cavestuff:desert_pebble"..pr:next(1,2)})
					    end
					end
				end
				
			end
		end
		end
	end
end)
