-----------------------------------------------------------------------------------------------
-- TWiG
-----------------------------------------------------------------------------------------------
local flat_stick = {-1/2, -1/2, -1/2, 1/2, -7/16, 1/2}

minetest.register_node("trunks:twig", {
	description = "Twig",
	inventory_image = "trunks_twig.png",
	wield_image = "trunks_twig.png",
	drawtype = "nodebox",
	tiles = { "trunks_twig.png" },
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	buildable_to = true,
	node_box = {type = "fixed", fixed = flat_stick},
	groups = {
		dig_immediate=3, -- almost literally immediate, like just picking up
		attached_node=1
	},
	sounds = default.node_sound_leaves_defaults(),
})

-----------------------------------------------------------------------------------------------
-- MoSS
-----------------------------------------------------------------------------------------------
minetest.register_node("trunks:moss", {
	description = "Moss",
	drawtype = "signlike",
	tiles = {"trunks_moss.png"},
	inventory_image = "trunks_moss.png",
	wield_image = "trunks_moss.png",
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {type = "wallmounted"},
	groups = {dig_immediate=2,attached_node=1},
	--legacy_wallmounted = true,
	sounds = default.node_sound_leaves_defaults(),
})

-----------------------------------------------------------------------------------------------
-- MoSS & FuNGuS
-----------------------------------------------------------------------------------------------
minetest.register_node("trunks:moss_fungus", {
	description = "Moss & Fungus",
	drawtype = "signlike",
	tiles = {"trunks_moss_fungus.png"},
	inventory_image = "trunks_moss_fungus.png",
	wield_image = "trunks_moss_fungus.png",
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {type = "wallmounted"},
	groups = {dig_immediate=2,attached_node=1},
	--legacy_wallmounted = true,
	sounds = default.node_sound_leaves_defaults(),
})
