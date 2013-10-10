-- MM: all temperature values have nothing to do with the circumstances under which real plants grow
-- MM: they are just used to get a result that looks "good" or more or less believable

-----------------------------------------------------------------------------------------------
-- LiLy PaDS
-----------------------------------------------------------------------------------------------

abstract_along_shore.grow_lilypad = function(pos)
	local right_here = {x=pos.x, y=pos.y+1, z=pos.z}
	local lily_type = math.random(1,2)
	if lily_type == 1 then
		minetest.add_node(right_here, {name="along_shore:lilypads_"..math.random(1,4), param2=math.random(0,3)})
	end
	if lily_type == 2 then
		if minetest.get_modpath("flowers_plus") ~= nil then
			local LiLy_PaDS = { 
				{1,"flowers:waterlily"}, 
				{2,"flowers:waterlily_225"}, 
				{3,"flowers:waterlily_45"}, 
				{4,"flowers:waterlily_675"} 
			}
			for i in pairs(LiLy_PaDS) do
				local 	NR = 		LiLy_PaDS[i][1]
				local 	PaD = 		LiLy_PaDS[i][2]
				local 	chance = 	math.random(1,4)
				if chance == NR then
					minetest.add_node(right_here, {name=PaD, param2=math.random(0,3)})
				end
			end
		else
			minetest.add_node(right_here, {name="along_shore:lilypads_"..math.random(1,4), param2=math.random(0,3)})
		end
	end
end

plantslib:register_generate_plant({
    surface = {"default:water_source"},
    max_count = Lilypads_Max_Count,
    rarity = Lilypads_Rarity,
    min_elevation = 1,
	max_elevation = 40,
	near_nodes = {"default:dirt_with_grass"},
	near_nodes_size = 4,
	near_nodes_vertical = 1,
	near_nodes_count = 1,
    plantlife_limit = -0.9,
	temp_max = -0.22, -- MM: checked perlin values ingame, seemed to make sense
    temp_min = 0.22, -- MM: checked perlin values ingame, seemed to make sense
  },
  "abstract_along_shore.grow_lilypad"
)

-----------------------------------------------------------------------------------------------
-- Sea WeeD
-----------------------------------------------------------------------------------------------
abstract_along_shore.grow_seaweed = function(pos)
	local right_here = {x=pos.x, y=pos.y+1, z=pos.z}
	minetest.add_node(right_here, {name="along_shore:seaweed_"..math.random(1,4), param2=math.random(1,3)})
end

plantslib:register_generate_plant({
    surface = {"default:water_source"},
    max_count = Seaweed_Max_Count,
    rarity = Seaweed_Rarity,
    min_elevation = 1,
	max_elevation = 40,
	near_nodes = {"default:dirt_with_grass"},
	near_nodes_size = 4,
	near_nodes_vertical = 1,
	near_nodes_count = 1,
    plantlife_limit = -0.9,
  },
  "abstract_along_shore.grow_seaweed"
)

-- seaweed at beaches
-- MM: not satisfied with it, but some beaches should have some algae
plantslib:register_generate_plant({
    surface = {"default:water_source"},
    max_count = Seaweed_Max_Count,
    rarity = Seaweed_Rarity,
    min_elevation = 1,
	max_elevation = 40,
	near_nodes = {"default:sand"},
	near_nodes_size = 1,
	near_nodes_vertical = 0,
	near_nodes_count = 3,
    plantlife_limit = -0.9,
	temp_max = -0.64, -- MM: more or less random values, just to make sure it's not everywhere
    temp_min = -0.22, -- MM: more or less random values, just to make sure it's not everywhere
  },
  "abstract_along_shore.grow_seaweed"
)
plantslib:register_generate_plant({
    surface = {"default:sand"},
    max_count = Seaweed_Max_Count*2,
    rarity = Seaweed_Rarity/2,
    min_elevation = 1,
	max_elevation = 40,
	near_nodes = {"default:water_source"},
	near_nodes_size = 1,
	near_nodes_vertical = 0,
	near_nodes_count = 3,
    plantlife_limit = -0.9,
	temp_max = -0.64, -- MM: more or less random values, just to make sure it's not everywhere
    temp_min = -0.22, -- MM: more or less random values, just to make sure it's not everywhere
  },
  "abstract_along_shore.grow_seaweed"
)