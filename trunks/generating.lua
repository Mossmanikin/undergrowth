-----------------------------------------------------------------------------------------------
-- TWiGS
-----------------------------------------------------------------------------------------------
abstract_trunks.place_twig = function(pos)
	local right_here = {x=pos.x, y=pos.y+1, z=pos.z}
	minetest.add_node(right_here, {name="trunks:twig", param2=math.random(0,3)})
end

plantslib:register_generate_plant({
    surface = {"default:dirt_with_grass"},
    max_count = Twigs_Max_Count,
    rarity = Twigs_Rarity,
    min_elevation = 1,
	max_elevation = 40,
	near_nodes = {"group:tree","ferns:fern_03","ferns:fern_02","ferns:fern_01"},
	near_nodes_size = 3,
	near_nodes_vertical = 1,
	near_nodes_count = 1,
    plantlife_limit = -0.9,
  },
  "abstract_trunks.place_twig"
)

-----------------------------------------------------------------------------------------------
-- TRuNKS
-----------------------------------------------------------------------------------------------
local TRuNKS = {
--	  MoD 						 TRuNK						NR
    {"default",  				"tree",				 		 1},
	{"default",					"jungletree",				 2},
	
	{"trees",					"tree_conifer",		 		 3},
	{"trees",					"tree_mangrove",			 4},
	{"trees",					"tree_palm",				 5},
	
	{"moretrees",				"apple_tree_trunk",			 6},
	{"moretrees",				"beech_trunk",				 7},
	{"moretrees",				"birch_trunk",				 8},
	{"moretrees",				"fir_trunk",				 9},
	{"moretrees",				"oak_trunk",				10},
	{"moretrees",				"palm_trunk",				11},
	{"moretrees",				"pine_trunk",				12},
	{"moretrees",				"rubber_tree_trunk",		13},
	{"moretrees",				"rubber_tree_trunk_empty",	14},
	{"moretrees",				"sequoia_trunk",			15},
	{"moretrees",				"spruce_trunk",				16},
	{"moretrees",				"willow_trunk",				17},
}

if Horizontal_Trunks == true then -- see settings.txt
for i in pairs(TRuNKS) do
	local 	MoD = 			TRuNKS[i][1]
	local 	TRuNK = 		TRuNKS[i][2]
	local 	NR = 			TRuNKS[i][3]
	if minetest.get_modpath(MoD) ~= nil 
	and NR < 6 then -- moretrees trunks allready have facedir
		
		local des = minetest.registered_nodes[MoD..":"..TRuNK].description
		  local par = minetest.registered_nodes[MoD..":"..TRuNK].paramtype
		local tls = minetest.registered_nodes[MoD..":"..TRuNK].tiles
		local tli = minetest.registered_nodes[MoD..":"..TRuNK].tile_images
		--  local igc = minetest.registered_nodes[MoD..":"..TRuNK].is_ground_content
		local grp = minetest.registered_nodes[MoD..":"..TRuNK].groups
		--  local drp = minetest.registered_nodes[MoD..":"..TRuNK].drop
		local snd = minetest.registered_nodes[MoD..":"..TRuNK].sounds
	
		minetest.register_node(":"..MoD..":"..TRuNK, {
			description = des,
			  paramtype = par,
			paramtype2 = "facedir", -- main change for lying trunks
			tiles = tls,
			tile_images = tli,
			--  is_ground_content = igc,
			groups = grp,
			--  drop = drp,
			sounds = snd,
		}) 
	
	end
end
end
			
abstract_trunks.place_trunk = function(pos)
	
	local right_here = {x=pos.x, y=pos.y+1, z=pos.z}
	local north = {x=pos.x, y=pos.y+1, z=pos.z+1}
	local south = {x=pos.x, y=pos.y+1, z=pos.z-1}
	local west = {x=pos.x-1, y=pos.y+1, z=pos.z}
	local east = {x=pos.x+1, y=pos.y+1, z=pos.z  }
	local node_here = minetest.get_node(right_here)
	local node_north = minetest.get_node(north)
	local node_south = minetest.get_node(south)
	local node_west = minetest.get_node(west)
	local node_east = minetest.get_node(east)
	if minetest.registered_nodes[node_here.name].buildable_to then -- instead of check_air = true,
		for i in pairs(TRuNKS) do
			local 	MoD = 			TRuNKS[i][1]
			local 	TRuNK = 		TRuNKS[i][2]
			local 	NR = 			TRuNKS[i][3]
			local 	chance = 		math.random(1, 17)
			if chance == NR then
				local trunk_type = math.random(1,3)
				if trunk_type == 1 then
					if minetest.get_modpath(MoD) ~= nil then
						minetest.add_node(right_here, {name=MoD..":"..TRuNK})
					else
						minetest.add_node(right_here, {name="default:tree"})
					end
				elseif trunk_type == 2 and Horizontal_Trunks == true then
					if minetest.get_modpath(MoD) ~= nil then
						if minetest.registered_nodes[node_north.name].buildable_to then
							minetest.add_node(north, {name=MoD..":"..TRuNK, param2=4})
						end
						minetest.add_node(right_here, {name=MoD..":"..TRuNK, param2=4})
						if minetest.registered_nodes[node_south.name].buildable_to then
							minetest.add_node(south, {name=MoD..":"..TRuNK, param2=4})
						end
					else
						if minetest.registered_nodes[node_north.name].buildable_to then
							minetest.add_node(north, {name="default:tree", param2=4})
						end
						minetest.add_node(right_here, {name="default:tree", param2=4})
						if minetest.registered_nodes[node_south.name].buildable_to then
							minetest.add_node(south, {name="default:tree", param2=4})
						end
					end
				elseif trunk_type == 3 and Horizontal_Trunks == true then
					if minetest.get_modpath(MoD) ~= nil then
						if minetest.registered_nodes[node_west.name].buildable_to then
							minetest.add_node(west, {name=MoD..":"..TRuNK, param2=12})
						end
						minetest.add_node(right_here, {name=MoD..":"..TRuNK, param2=12})
						if minetest.registered_nodes[node_east.name].buildable_to then
							minetest.add_node(east, {name=MoD..":"..TRuNK, param2=12})
						end
					else
						if minetest.registered_nodes[node_west.name].buildable_to then
							minetest.add_node(west, {name="default:tree", param2=12})
						end
						minetest.add_node(right_here, {name="default:tree", param2=12})
						if minetest.registered_nodes[node_east.name].buildable_to then
							minetest.add_node(east, {name="default:tree", param2=12})
						end
					end
				end
			end
		end
	end
end

plantslib:register_generate_plant({
    surface = {"default:dirt_with_grass"},
    max_count = Trunks_Max_Count, -- 320,
    rarity = Trunks_Rarity, -- 99,
    min_elevation = 1,
	max_elevation = 40,
	avoid_nodes = {"group:tree"},
	avoid_radius = 1,
	near_nodes = {"group:tree","ferns:fern_03","ferns:fern_02","ferns:fern_01"},
	near_nodes_size = 3,
	near_nodes_vertical = 1,
	near_nodes_count = 1,
    plantlife_limit = -0.9,
    check_air = false,
  },
  "abstract_trunks.place_trunk"
)
