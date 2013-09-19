--abms

minetest.register_abm({
	nodenames = {"default:dirt_with_grass"},
	interval = 1,
	chance = 3,
	action = function(pos)
	if minetest.find_node_near({x=pos.x,y=pos.y+1,z=pos.z}, 3, {"group:tree"}) then
		minetest.env:add_node(pos, {name="forestsoils:dirt_with_leaves_1"})
	end
	end,
})

minetest.register_abm({
	nodenames = {"default:dirt_with_grass"},
	interval = 1,
	chance = 6,
	action = function(pos)
	if minetest.find_node_near({x=pos.x,y=pos.y+1,z=pos.z}, 1, {"forestsoils:dirt_with_leaves_1"}) then
		minetest.env:add_node(pos, {name="forestsoils:grass_with_leaves_2"})
	end
	end,
})

minetest.register_abm({
	nodenames = {"default:dirt_with_grass"},
	interval = 1,
	chance = 12,
	action = function(pos)
	if minetest.find_node_near({x=pos.x,y=pos.y+1,z=pos.z}, 1, {"forestsoils:grass_with_leaves_2"}) then
		minetest.env:add_node(pos, {name="forestsoils:grass_with_leaves_1"})
	end
	
	end,
})