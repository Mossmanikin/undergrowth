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

minetest.register_node("trunks:moss", {
	description = "moss",
	drawtype = "signlike",
	tiles = {"trunks_moss.png"},
	inventory_image = "trunks_moss.png",
	wield_image = "trunks_moss.png",
	paramtype = "light",
	paramtype2 = "wallmounted",
	walkable = false,
	--climbable = true,
	selection_box = {
		type = "wallmounted",
		--wall_top = = <default>
		--wall_bottom = = <default>
		--wall_side = = <default>
	},
	groups = {choppy=2,oddly_breakable_by_hand=3,flammable=2},
	legacy_wallmounted = true,
	sounds = default.node_sound_leaves_defaults(),
})
