-- generating of forest soils

abstract_forestsoils.place_soil = function(pos)
	local node_here = minetest.get_node(pos)
	if minetest.registered_nodes[node_here.name] then -- instead of check_air = true,
		if minetest.find_node_near(pos, 3, {"group:tree"}) then
			minetest.add_node(pos, {name="forestsoils:dirt_with_leaves_1"})
		end
	end
end

plantslib:register_generate_plant({
    surface = {"default:dirt_with_grass"},
    max_count = 6400,
    rarity = 1,
    min_elevation = 1,
	near_nodes = {"group:tree"},
	near_nodes_size = 3,
	near_nodes_vertical = 1,
	near_nodes_count = 4,
    plantlife_limit = -1,
    check_air = false,
  },
  "abstract_forestsoils.place_soil"
)

abstract_forestsoils.place_soil_1 = function(pos)
	local node_here = minetest.get_node(pos)
	local node_above = minetest.get_node({x=pos.x,y=pos.y+1,z=pos.z})
	if minetest.registered_nodes[node_here.name] then -- instead of check_air = true,
		if string.find(node_above.name, "bush") -- doesn't work, just here as a "reminder"
		or string.find(node_above.name, "pebble") then
			minetest.add_node(pos, {name="forestsoils:dirt_with_leaves_1"})
		end
	end
end

plantslib:register_generate_plant({
    surface = {"default:dirt_with_grass"},
    max_count = 6400,
    rarity = 67,
    min_elevation = 1,
    plantlife_limit = -1,
    check_air = false,
  },
  "abstract_forestsoils.place_soil_1"
)

abstract_forestsoils.place_soil_2 = function(pos)
	local node_here = minetest.get_node(pos)
	if minetest.registered_nodes[node_here.name] then -- instead of check_air = true,
		if minetest.find_node_near(pos, 1, {"forestsoils:dirt_with_leaves_1"}) then
			minetest.add_node(pos, {name="forestsoils:grass_with_leaves_2"})
		end
	end
end

plantslib:register_generate_plant({
    surface = {"default:dirt_with_grass"},
    max_count = 6400,
    rarity = 1,
    min_elevation = 1,
	plantlife_limit = -1,
    check_air = false,
  },
  "abstract_forestsoils.place_soil_2"
)

abstract_forestsoils.place_soil_3 = function(pos)
	local node_here = minetest.get_node(pos)
	if minetest.registered_nodes[node_here.name] then -- instead of check_air = true,
		if minetest.find_node_near(pos, 1, {"forestsoils:grass_with_leaves_2"}) then
			minetest.add_node(pos, {name="forestsoils:grass_with_leaves_1"})
		end
	end
end

plantslib:register_generate_plant({
    surface = {"default:dirt_with_grass"},
    max_count = 6400,
    rarity = 1,
    min_elevation = 1,
    plantlife_limit = -1,
	check_air = false,
  },
  "abstract_forestsoils.place_soil_3"
)

abstract_forestsoils.place_soil_4 = function(pos)
	local node_here = minetest.get_node(pos)
	if minetest.registered_nodes[node_here.name] then -- instead of check_air = true,
		if minetest.find_node_near(pos, 1, {"forestsoils:dirt_with_leaves_1"}) then
			minetest.add_node(pos, {name="forestsoils:dirt_with_leaves_2"})
		end
	end
end

plantslib:register_generate_plant({
    surface = {"default:dirt_with_grass"},
    max_count = 6400,
    rarity = 1,
    min_elevation = 1,
	plantlife_limit = -1,
    check_air = false,
  },
  "abstract_forestsoils.place_soil_4"
)