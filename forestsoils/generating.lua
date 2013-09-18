abstract_forestsoils.place_soil = function(pos)
	if minetest.find_node_near(pos, 3, {"group:tree"}) then
		minetest.add_node(pos, {name="forestsoils:dirt_with_leaves_1"})
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

abstract_forestsoils.place_soil_2 = function(pos)
	if minetest.find_node_near(pos, 1, {"forestsoils:dirt_with_leaves_1"}) then
		minetest.add_node(pos, {name="forestsoils:grass_with_leaves_2"})
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
	if minetest.find_node_near(pos, 1, {"forestsoils:grass_with_leaves_2"}) then
		minetest.add_node(pos, {name="forestsoils:grass_with_leaves_1"})
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
	if minetest.find_node_near(pos, 1, {"forestsoils:dirt_with_leaves_1"}) then
		minetest.add_node(pos, {name="forestsoils:dirt_with_leaves_2"})
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