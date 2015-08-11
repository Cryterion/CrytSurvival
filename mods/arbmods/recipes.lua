
minetest.register_craft({
	output = "glooptest:kalite_block",
	recipe = {
		{"glooptest:kalite_lump","glooptest:kalite_lump","glooptest:kalite_lump"},
		{"glooptest:kalite_lump","glooptest:kalite_lump","glooptest:kalite_lump"},
		{"glooptest:kalite_lump","glooptest:kalite_lump","glooptest:kalite_lump"},
}
})

minetest.register_craft({
	output = "glooptest:kalite_lump 9",
	recipe = {
		{"glooptest:kalite_block"},
}
})

minetest.register_craft({
	output = "gloopores:arol_block",
	recipe = {
			{"gloopores:arol_ingot","gloopores:arol_ingot","gloopores:arol_ingot"},
			{"gloopores:arol_ingot","gloopores:arol_ingot","gloopores:arol_ingot"},
			{"gloopores:arol_ingot","gloopores:arol_ingot","gloopores:arol_ingot"},
}
})

minetest.register_craft({
	output = "gloopores:arol_ingot 9",
	recipe = {
		{"gloopores:arol_block"},
}
})

minetest.register_craft({
	output = "default:mese_crystal",
	recipe = {
		{"default:mese_crystal_fragment","default:mese_crystal_fragment","default:mese_crystal_fragment"},
		{"default:mese_crystal_fragment","default:mese_crystal_fragment","default:mese_crystal_fragment"},
		{"default:mese_crystal_fragment","default:mese_crystal_fragment","default:mese_crystal_fragment"},
	}
})

minetest.register_craft({
	output = "digilines_lightsensor:lightsensor",
	recipe = {
		{"technic:copper_coil","quartz:block","plasticbox:plasticbox_white"},
		{"","mesecons_luacontroller:luacontroller0000",""},
		{"","digilines:wire_std_00000000",""},
	}
})

minetest.register_craft({
	output = "digilines_rtc:rtc",
	recipe = {
		{"quartz:block","mesecons:wire_00000000_off","quartz:block"},
		{"technic:copper_coil","mesecons_luacontroller:luacontroller0000","technic:copper_coil"},
		{"technic:battery","digilines:wire_std_00000000","technic:battery"},
	}
})

minetest.register_craft({
	output = "default:dirt 9",
	recipe = {
		{"usesdirt:dirt_brick"},
}
})

minetest.register_craft({
	output = "gloopblocks:pumice",
	recipe = {
		{"lavacooling:pumice"},
	}
})

minetest.register_craft({
	output = "lavacooling:pumice",
	recipe = {
		{"gloopblocks:pumice"},
	}
})

minetest.register_craft({
	output = "wrench:wrench",
	recipe = {
		{"technic:carbon_steel_ingot","","technic:carbon_steel_ingot"},
		{"","technic:carbon_steel_ingot",""},
		{"","technic:carbon_steel_ingot",""},
	}
})

-- Additional Technic Extractor Recipes

local extractor_recipes = {
	{"technic:kalite_dust",				"dye:red 2"},
	{"flowers:sunflower",				"dye:yellow 4"},
	{"farming:weed",					"dye:green 2"},
	{"technic:sulfur_dust",				"dye:yellow 2"},
	{"farming:cotton",					"dye:white 1"},
	{"seacoral:coralcyan",				"dye:cyan 4"},
	{"seacoral:coralmagenta",			"dye:magenta 4"},
	{"seacoral:coralaqua",				"dye:aqua 4"},
	{"seacoral:corallime",				"dye:lime 4"},
	{"seacoral:coralskyblue",			"dye:skyblue 4"},
	{"seacoral:coralredviolet",			"dye:redviolet 4"},
}


--Other Colour Sources
--	Carrots		- Orange
--  Acorns		- Brown
--  Birch Bark  - Light Brown
--  Ivy			- Yellow/Brown
--  Pinetree Bark	- Light/Medium Brown
--  Walnuts		- Deep Brown
--  Strawberries - Pink
--  Blueberries  - Blue/Purple
--  Blackberries - Strong Purple
--  Raspberries  - Purple/Blue
--  Bamboo		- Turkey Red
--  Grass		- Yellow/Green
--  Pumkin		- Orange

for _, data in ipairs(extractor_recipes) do
	technic.register_extractor_recipe({input = {data[1]}, output = data[2]})
end

-- Additional Technic Grinder Recipes

local grinder_recipes = {
	{"gloopblocks:pumice",					"default:sand"},
}
for _, data in ipairs(grinder_recipes) do
	technic.register_grinder_recipe({input = {data[1]}, output = data[2]})
end

minetest.register_craft({
	output = "dye:green",
	recipe = {
		{"farming:weed"},
	}
})

