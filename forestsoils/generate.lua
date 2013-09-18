-- generate

minetest.register_on_generated(function(minp, maxp, seed)
	if maxp.y >= 2 and minp.y <= 0 then
		-- Generate forest soil
		-- perlin like plants_lib default and "default:grass_*"
		local perlin1 = minetest.get_perlin(329, 3, 0.6, 100)
		-- Assume X and Z lengths are equal
		local divlen = 8--16
		local divs = (maxp.x-minp.x)/divlen+1;
		for divx=0,divs-1 do
		for divz=0,divs-1 do
			local x0 = minp.x + math.floor((divx+0)*divlen)
			local z0 = minp.z + math.floor((divz+0)*divlen)
			local x1 = minp.x + math.floor((divx+1)*divlen)
			local z1 = minp.z + math.floor((divz+1)*divlen)
			-- dirt_with_leaves_1
			local forest_soil_amount = 100
			-- Find random positions for grass based on this random
			local pr = PseudoRandom(seed)--+1)
			for i=0,forest_soil_amount do
				local x = pr:next(x0, x1)
				local z = pr:next(z0, z1)
				-- Find ground level (0...38)
				local ground_y = nil
				for y=38,0,-1 do
					local nn = minetest.get_node({x=x,y=y,z=z}).name
					if nn == "default:dirt_with_grass" then
						ground_y = y
						break
					end
				end
				
				if ground_y then
					local pos = {x=x,y=ground_y,z=z}
					local pos1 = {x=x,y=ground_y+1,z=z}
					local nn = minetest.get_node(pos).name
					-- Check if the node can be replaced
					if minetest.find_node_near(pos1, 3, {"group:tree"}) then
						if table.getn(minetest.find_nodes_in_area({x=x-3, y=ground_y-1, z=z-3}, {x=x+3, y=ground_y+1, z=z+3}, {"group:tree"})) >= 4 then -- from plants_lib
							minetest.set_node(pos,{name="forestsoils:dirt_with_leaves_1"})
						end
					end
					if minetest.find_node_near(pos, 1, {"forestsoils:dirt_with_leaves_1"}) then
						minetest.set_node(pos,{name="forestsoils:grass_with_leaves_2"})
					end
					if minetest.find_node_near(pos, 1, {"forestsoils:grass_with_leaves_2"}) then
						minetest.set_node(pos,{name="forestsoils:grass_with_leaves_1"})
					end
					if minetest.find_node_near(pos, 1, {"forestsoils:grass_with_leaves_1"}) then
						minetest.set_node(pos,{name="forestsoils:dirt_with_leaves_2"})
					end
				end
			end
		end
		end
	end
end)