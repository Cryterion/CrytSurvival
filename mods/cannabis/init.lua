--farming.register_plant("cannabis:cannabis", {
--	description = "Cannabis seed",
--	inventory_image = "cannabis_seed_inv.png",
--	steps = 8,
--	minlight = 13,
--	maxlight = default.LIGHT_MAX,
--	fertility = {"grassland"}
--})

--minetest.register_craftitem("cannabis:cannabis_seeds",
--{
--	description = "Cannabis Seeds",
--	inventory_image = "cannabis_seeds_inv.png",
--})

farming.register_plant("cannabis:cannabis", {
	description = "Cannabis seed",
	inventory_image = "cannabis_seed.png",
	steps = 8,
	minlight = 13,
	maxlight = default.LIGHT_MAX,
	fertility = {"grassland"}
})

--minetest.override_item("dryplants:juncus", {drop = {
--	max_items = 1,
--	items = {
--		{items = {'cannabis:seed_cannabis'},rarity = 100},
--		{items = {'dryplants:juncus'}},
--	}
--}})
--minetest.register_node("cannabis:cannabis_seeds", {
--	description = "Cannabis Seeds",
--	drawtype = "nodebox",
--	paramtype = "light",
--	walkable = true,
--	tiles = "cannabis_seeds_node.png",
--	selection_box = {
--		type = "fixed",
--		fixed = {
--			{-0.5, -0.5, -0.5, 0.5, -0.5+3/16, 0.5}
--		},
--	},
--	groups = {snappy=3, flammable=2, not_in_creative_inventory=1,plant=1},
--	sounds = default.node_sound_leaves_defaults(),
--})

--minetest.registernode("cannabis:cannabis_plant",
--{
--	description = "Cannabis Growing",
--	drawtype = "nodebox",
--})

--minetest.registernode("cannabis:cannabis_full",
--{
--	description = "Cannabis Full",
--	drawtype = "nodebox",
--})

