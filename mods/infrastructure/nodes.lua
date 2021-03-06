-- **************************************************************************************************** MATERIALS

-- Asphalt block
	minetest.register_alias("infrastructure:asphalt", "streets:asphalt")

-- Concrete block
	minetest.register_alias("infrastructure:concrete", "technic:concrete")

-- Concrete fence
	minetest.register_alias("infrastructure:fence_concrete", "prefab:concrete_fence")

-- Galvanized steel block
	minetest.register_node("infrastructure:galvanized_steel", {
		description = "Galvanized steel",
		tile_images = {"infrastructure_galvanized_steel.png"},
		drawtype = "normal",
		paramtype = "light",
		groups = {cracky = 2},
	})
	minetest.register_alias("galvanized_steel", "infrastructure:galvanized_steel")

-- Galvanized steel fence
	minetest.register_node("infrastructure:fence_galvanized_steel", {
		description = "Galvanized steel fence",
		drawtype = "fencelike",
		tiles = {"infrastructure_galvanized_steel.png"},
		paramtype = "light",
		is_ground_content = true,
		selection_box = {
			type = "fixed",
			fixed = {-1/8, -1/2, -1/8, 1/8, 1/2, 1/8},
		},
		groups = {cracky = 2},
	})

-- **************************************************************************************************** CENTER LINES

-- Asphalt block with center solid line
	minetest.register_node("infrastructure:asphalt_center_solid_line", {
	description = "Asphalt with center solid line",
	tile_images = {
			"streets_asphalt.png^infrastructure_single_yellow_line.png",
			"streets_asphalt.png",
			"streets_asphalt.png",
			"streets_asphalt.png",
			"streets_asphalt.png",
			"streets_asphalt.png",
	},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 1},
	})

-- Asphalt block with center solid line on one side (for making dashed lines)
	minetest.register_node("infrastructure:asphalt_center_solid_one_side", {
	description = "Asphalt with center solid line on one side",
	tile_images = {
			"streets_asphalt.png^infrastructure_solid_yellow_line_one_side.png",
			"streets_asphalt.png",
			"streets_asphalt.png",
			"streets_asphalt.png",
			"streets_asphalt.png",
			"streets_asphalt.png",
	},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 1},
	})

-- Asphalt block with center solid double line
	minetest.register_node("infrastructure:asphalt_center_solid_double", {
	description = "Asphalt with center solid double line",
	tile_images = {
			"streets_asphalt.png^infrastructure_double_yellow_line.png",
			"streets_asphalt.png",
			"streets_asphalt.png",
			"streets_asphalt.png",
			"streets_asphalt.png",
			"streets_asphalt.png",
	},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 1},
	})

-- Asphalt block with center corner single line
	minetest.register_node("infrastructure:asphalt_center_corner_single", {
	description = "Asphalt with center corner single line",
	tile_images = {
			"streets_asphalt.png^infrastructure_single_yellow_line_corner.png",
			"streets_asphalt.png",
			"streets_asphalt.png",
			"streets_asphalt.png",
			"streets_asphalt.png",
			"streets_asphalt.png",
	},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 1},
	})

-- Asphalt block with center corner double line
	minetest.register_node("infrastructure:asphalt_center_corner_double", {
	description = "Asphalt with center corner double line",
	tile_images = {
			"streets_asphalt.png^infrastructure_solid_double_yellow_line_corner.png",
			"streets_asphalt.png",
			"streets_asphalt.png",
			"streets_asphalt.png",
			"streets_asphalt.png",
			"streets_asphalt.png",
	},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 1},
	})

-- **************************************************************************************************** TRAFFIC MARKS

-- Asphalt block with arrow straight
	minetest.register_alias("infrastructure:asphalt_arrow_straight", "streets:asphalt_arrow_straight")

-- Asphalt block with arrow straight + left
	minetest.register_alias("infrastructure:asphalt_arrow_straight_left", "streets:asphalt_arrow_straight_left")

-- Asphalt block with arrow straight + right
	minetest.register_alias("infrastructure:asphalt_arrow_straight_right", "streets:asphalt_arrow_straight_left")

-- Asphalt block with arrow left
	minetest.register_alias("infrastructure:asphalt_arrow_left", "streets:asphalt_arrow_left")

-- Asphalt block with arrow right
	minetest.register_alias("infrastructure:asphalt_arrow_right", "streets:asphalt_arrow_right")

-- Asphalt block with "P"-sign
	minetest.register_alias("infrastructure:asphalt_parking", "streets:asphalt_parking")

-- **************************************************************************************************** PRECAST CONCRETE

-- Concrete seperating wall
	minetest.register_node("infrastructure:precast_concrete_seperating_wall", {
		description = "Precast concrete seperating wall",
		tile_images = {"infrastructure_concrete.png"},
		drawtype = "nodebox",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 2},
		node_box = {
			type = "fixed",
			fixed = {
				{-5/16, -1/2, -7/16, 5/16, -1/4, 7/16},
				{-1/16, -1/4, -7/16, 1/16, 1/2, 7/16},
				{-3/16, -1/2, -5/16, 3/16, 0, -1/4},
				{-3/16, -1/2, 1/4, 3/16, 0, 5/16}
			}
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-5/16, -1/2, -7/16, 5/16, -1/4, 7/16},
				{-1/16, -1/4, -7/16, 1/16, 1/2, 7/16},
				{-3/16, -1/2, -5/16, 3/16, 0, -1/4},
				{-3/16, -1/2, 1/4, 3/16, 0, 5/16}
			}
		}
	})

-- Concrete cylinder
	minetest.register_node("infrastructure:precast_concrete_cylinder", {
		description = "Precast concrete cylinder",
		tile_images = {"infrastructure_concrete.png"},
		drawtype = "nodebox",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 2},
		walkable = false,
		climbable = true,
		node_box = {
			type = "fixed",
			fixed = {
				{3/8, -1/2, -1/2, 1/2, 1/2, 1/2},
				{-1/2, -1/2, -1/2, -3/8, 1/2, 1/2},
				{-1/2, -1/2, 3/8, 1/2, 1/2, 1/2},
				{-1/2, -1/2, -1/2, 1/2, 1/2, -3/8}
			}
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{3/8, -1/2, -1/2, 1/2, 1/2, 1/2},
				{-1/2, -1/2, -1/2, -3/8, 1/2, 1/2},
				{-1/2, -1/2, 3/8, 1/2, 1/2, 1/2},
				{-1/2, -1/2, -1/2, 1/2, 1/2, -3/8}
			}
		}
	})

-- Concrete sticks
	minetest.register_node("infrastructure:precast_concrete_stick_vertical", {
		description = "Precast concrete stick vertical",
		tile_images = {"infrastructure_concrete.png"},
		drawtype = "nodebox",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 2},
		node_box = {
			type = "fixed",
			fixed = {-1/8, -1/2, -1/8, 1/8, 1/2, 1/8}
		},
		selection_box = {
			type = "fixed",
			fixed = {-1/8, -1/2, -1/8, 1/8, 1/2, 1/8}
		}
	})

	minetest.register_node("infrastructure:precast_concrete_stick_horizontal", {
		description = "Precast concrete stick horizontal",
		tile_images = {"infrastructure_concrete.png"},
		drawtype = "nodebox",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 2},
		node_box = {
			type = "fixed",
			fixed = {-1/8, -1/8, -1/2, 1/8, 1/8, 1/2}
		},
		selection_box = {
			type = "fixed",
			fixed = {-1/8, -1/8, -1/2, 1/8, 1/8, 1/2}
		}
	})

-- Concrete grid paver
	minetest.register_node("infrastructure:precast_concrete_grid_paver", {
		description = "Precast concrete grid paver",
		tile_images = {
			"infrastructure_grid_paver_top.png",
			"infrastructure_grid_paver_bottom.png",
			"infrastructure_concrete.png",
			"infrastructure_concrete.png",
			"infrastructure_concrete.png",
			"infrastructure_concrete.png"
		},
		drawtype = "nodebox",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 2},
		node_box = {
			type = "fixed",
			fixed = {
				{-1/2, -1/2, -1/2, 1/2, -1/2, 1/2},
				{-1/2, -1/2 + 1/128, -1/2, 1/2, -1/2 + 1/128, 1/2},
				{-1/2, -1/2 + 2/128, -1/2, 1/2, -1/2 + 2/128, 1/2},
				{-1/2, -1/2 + 3/128, -1/2, 1/2, -1/2 + 3/128, 1/2},
				{-1/2, -1/2 + 4/128, -1/2, 1/2, -1/2 + 4/128, 1/2},
				{-1/2, -1/2 + 5/128, -1/2, 1/2, -1/2 + 5/128, 1/2},
				{-1/2, -1/2 + 6/128, -1/2, 1/2, -1/2 + 6/128, 1/2},
				{-1/2, -1/2 + 7/128, -1/2, 1/2, -1/2 + 7/128, 1/2},
				{-1/2, -1/2 + 8/128, -1/2, 1/2, -1/2 + 8/128, 1/2},
			}
		},
		selection_box = {
			type = "fixed",
			fixed = {-1/2, -1/2, -1/2, 1/2, -1/2 + 8/128, 1/2}
		},

		after_place_node = function(pos)
			pos.y = pos.y - 1
			local node = minetest.get_node(pos)
			if (node.name == "default:dirt_with_grass") then
				pos.y = pos.y + 1
				local node = minetest.get_node(pos)
				node.name = "infrastructure:precast_concrete_grid_paver_with_grass"
				minetest.swap_node(pos, node)
			end
		end
	})

	minetest.register_node("infrastructure:precast_concrete_grid_paver_with_grass", {
		description = "Precast concrete grid paver with grass",
		tile_images = {
			"infrastructure_grid_paver_top.png",
			"infrastructure_grid_paver_bottom.png",
			"infrastructure_grid_paver_grass.png",
			"infrastructure_grid_paver_grass.png",
			"infrastructure_grid_paver_grass.png",
			"infrastructure_grid_paver_grass.png"
		},
		drawtype = "nodebox",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 2},
		drop = "infrastructure:precast_concrete_grid_paver",
		node_box = {
			type = "fixed",
			fixed = {
				{-1/2, -1/2, -1/2, 1/2, -1/2, 1/2},
				{-1/2, -1/2 + 1/128, -1/2, 1/2, -1/2 + 1/128, 1/2},
				{-1/2, -1/2 + 2/128, -1/2, 1/2, -1/2 + 2/128, 1/2},
				{-1/2, -1/2 + 3/128, -1/2, 1/2, -1/2 + 3/128, 1/2},
				{-1/2, -1/2 + 4/128, -1/2, 1/2, -1/2 + 4/128, 1/2},
				{-1/2, -1/2 + 5/128, -1/2, 1/2, -1/2 + 5/128, 1/2},
				{-1/2, -1/2 + 6/128, -1/2, 1/2, -1/2 + 6/128, 1/2},
				{-1/2, -1/2 + 7/128, -1/2, 1/2, -1/2 + 7/128, 1/2},
				{-1/2, -1/2 + 8/128, -1/2, 1/2, -1/2 + 8/128, 1/2},

				{-3/8, -1/2, 1/4, -1/8, 0, 1/4},
				{1/8, -1/2, 1/4, 3/8, 0, 1/4},

				{-1/8, -1/2, 0, 1/8, 0, 0},

				{-3/8, -1/2, -1/4, -1/8, 0, -1/4},
				{1/8, -1/2, -1/4, 3/8, 0, -1/4},

				{1/4, -1/2, -3/8, 1/4, 0, -1/8},
				{1/4, -1/2, 1/8, 1/4, 0, 3/8},

				{0, -1/2, -1/8, 0, 0, 1/8},

				{-1/4, -1/2, -3/8, -1/4, 0, -1/8},
				{-1/4, -1/2, 1/8, -1/4, 0, 3/8}
			}
		},
		selection_box = {
			type = "fixed",
			fixed = {-1/2, -1/2, -1/2, 1/2, -1/2 + 8/128, 1/2}
		},

		on_punch = function(pos, node)
			local node = minetest.get_node(pos)
			node.name = "infrastructure:precast_concrete_grid_paver"
			minetest.swap_node(pos, node)
		end
	})

-- **************************************************************************************************** STEEL STRUCTURES

-- Truss
	minetest.register_node("infrastructure:truss", {
		description = "Truss",
		tile_images = {"infrastructure_truss.png"},
		drawtype = "nodebox",
		paramtype = "light",
		groups = {cracky = 2},
		node_box = {
			type = "fixed",
			fixed = {
				{1/2, -1/2, -1/2, 1/2, 1/2, 1/2},
				{-1/2, 1/2, -1/2, 1/2, 1/2, 1/2},
				{-1/2, -1/2, 1/2, 1/2, 1/2, 1/2},
				{-1/2, -1/2, -1/2, -1/2, 1/2, 1/2},
				{-1/2, -1/2, -1/2, 1/2, -1/2, 1/2},
				{-1/2, -1/2, -1/2, 1/2, 1/2, -1/2}
			}
		},
		selection_box = {
			type = "fixed",
			fixed = {-1/2, -1/2, -1/2, 1/2, 1/2, 1/2}
		}
	})

-- Wire netting
	minetest.register_node("infrastructure:wire_netting", {
		description = "Wire netting",
		tile_images = {"infrastructure_wire_netting.png"},
		drawtype = "nodebox",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 2},
		node_box = {
			type = "fixed",
			fixed = {-1/2, -1/2, 0, 1/2, 1/2, 0}
		},
		selection_box = {
			type = "fixed",
			fixed = {-1/2, -1/2, -1/8, 1/2, 1/2, 1/8}
		}
	})

-- Razor wire
	minetest.register_node("infrastructure:razor_wire", {
		description = "Razor wire",
		tile_images = {"infrastructure_razor_wire.png"},
		drawtype = "nodebox",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 2},
		node_box = {
			type = "fixed",
			fixed = {
				{-1/2, 1/2, -1/2, 1/2, 1/2, 1/2},
				{-1/2, -1/2, -1/2, 1/2, -1/2, 1/2},
				{-1/2, -1/2, 1/2, 1/2, 1/2, 1/2},
				{-1/2, -1/2, -1/2, 1/2, 1/2, -1/2}
			}
		},
		selection_box = {
			type = "fixed",
			fixed = {-1/2, -1/2, -1/2, 1/2, 1/2, 1/2}
		},

		walkable = false,
		damage_per_second = 8
	})

-- Drainage channel grating
	minetest.register_node("infrastructure:drainage_channel_grating", {
		description = "Truss",
		tile_images = {
			"infrastructure_drainage_channel_grating.png",
			"infrastructure_drainage_channel_grating.png",
			"infrastructure_galvanized_steel.png",
			"infrastructure_galvanized_steel.png",
			"infrastructure_galvanized_steel.png",
			"infrastructure_galvanized_steel.png"
		},
		drawtype = "nodebox",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 2},
		node_box = {
			type = "fixed",
			fixed = {-1/2, -1/2, -1/2, 0, -3/8, 1/2}
		},
		selection_box = {
			type = "fixed",
			fixed = {-1/2, -1/2, -1/2, 0, -3/8, 1/2}
		}
	})

-- Louver
	minetest.register_node("infrastructure:louver_opened", {
		description = "Louver",
		tile_images = {"infrastructure_galvanized_steel.png"},
		drawtype = "nodebox",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 2},
		node_box = {
			type = "fixed",
			fixed = {
				{-1/2, 7/16, 0, 1/2, 1/2, 1/2},
				{-1/2, -1/16, 0, 1/2, 0, 1/2}
			}
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-1/2, 7/16, 0, 1/2, 1/2, 1/2},
				{-1/2, -1/16, 0, 1/2, 0, 1/2}
			}
		},

		on_punch = function(pos, node)
			minetest.swap_node(pos, {name = "infrastructure:louver_closed", param2 = node.param2})
		end
	})

	minetest.register_node("infrastructure:louver_closed", {
		tile_images = {"infrastructure_galvanized_steel.png"},
		drawtype = "nodebox",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 2},
		drop = "infrastructure:louver_opened",
		node_box = {
			type = "fixed",
			fixed = {
				{-1/2, 1/16, 7/16, 1/2, 1/2, 1/2},
				{-1/2, -7/16, 7/16, 1/2, 0, 1/2}
			}
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-1/2, 1/16, 7/16, 1/2, 1/2, 1/2},
				{-1/2, -7/16, 7/16, 1/2, 0, 1/2}
			}
		},

		on_punch = function(pos, node)
			minetest.swap_node(pos, {name = "infrastructure:louver_opened", param2 = node.param2})
		end
	})

	minetest.register_alias("infrastructure:louver", "infrastructure:louver_opened")

-- Riffled sheet
	minetest.register_node("infrastructure:riffled_sheet", {
		description = "Riffled sheet",
		tile_images = {"infrastructure_riffled_sheet.png"},
		inventory_image = "infrastructure_riffled_sheet.png",
		wield_image = "infrastructure_riffled_sheet.png",
		drawtype = "nodebox",
		paramtype = "light",
		groups = {cracky = 2, oddly_breakable_by_hand = 1},
		node_box = {
			type = "fixed",
			fixed = {-1/2, -1/2, -1/2, 1/2, -1/2 + 0.001, 1/2}
		},
		selection_box = {
			type = "fixed",
			fixed = {-1/2, -1/4, -1/2, 1/2, -1/2 + 0.01, 1/2}
		}
	})

-- Corrugated sheet
	minetest.register_node("infrastructure:corrugated_sheet", {
		description = "corrugated sheet",
		tile_images = {"infrastructure_corrugated_sheet.png"},
		inventory_image = "infrastructure_corrugated_sheet.png",
		wield_image = "infrastructure_corrugated_sheet.png",
		drawtype = "raillike",
		paramtype = "light",
		groups = {cracky = 2, oddly_breakable_by_hand = 1},
	})

-- **************************************************************************************************** ADVANCED ITEMS

-- Displacement
	function displacement(pos, placer)
		local displaced_node = minetest.env:get_node(pos)
		local fdir = minetest.dir_to_facedir(placer:get_look_dir())
		pos.y = pos.y - 1
		local node = minetest.env:get_node(pos)

		if ((string.find(node.name, "_three_quarter") ~= nil) or (string.find(node.name, "_displacement_1") ~= nil)) then
			pos.y = pos.y + 1
			minetest.env:add_node(pos, {name = displaced_node.name.."_displacement_1", param2 = fdir})
		elseif (((string.find(node.name, "slab_") ~= nil) and (string.find(node.name, "_quarter") == nil)) or (string.find(node.name, "_displacement_2") ~= nil)) then
			pos.y = pos.y + 1
			minetest.env:add_node(pos, {name = displaced_node.name.."_displacement_2", param2 = fdir})
		elseif (((string.find(node.name, "_quarter") ~= nil) and (string.find(node.name, "_three_quarter") == nil)) or (string.find(node.name, "_displacement_3") ~= nil)) then
			pos.y = pos.y + 1
			minetest.env:add_node(pos, {name = displaced_node.name.."_displacement_3", param2 = fdir})
		end
	end

-- Raised pavement marker yellow/yellow
	minetest.register_node("infrastructure:marker_yellow_yellow", {
		description = "Raised pavement marker with yellow & yellow retroreflectors",
		tile_images = {
			"infrastructure_marker_top_yellow_yellow.png",
			"infrastructure_marker_bottom_side.png",
			"infrastructure_marker_bottom_side.png",
			"infrastructure_marker_bottom_side.png",
			"infrastructure_marker_side_yellow.png",
			"infrastructure_marker_side_yellow.png"
		},
		drawtype = "nodebox",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 3},
		walkable = false,
		light_source = MARKER_LIGHT_RANGE,
		sunlight_propagates = true,
		node_box = {
			type = "fixed",
			fixed = {
				{-1/8, -1/2, -1/8, -1/16, -3/8, 1/8},
				{-1/16, -1/2, -1/8, 1/16, -7/16, 1/8},
				{1/16, -1/2, -1/8, 1/8, -3/8, 1/8},
				{-1/16, -7/16, -1/16, 1/16, -3/8, 1/16}
			}
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-1/8, -1/2, -1/8, -1/16, -3/8, 1/8},
				{-1/16, -1/2, -1/8, 1/16, -7/16, 1/8},
				{1/16, -1/2, -1/8, 1/8, -3/8, 1/8},
				{-1/16, -7/16, -1/16, 1/16, -3/8, 1/16}
			}
		},

		after_place_node = function(pos, placer)
			displacement(pos, placer)
		end
	})

	for i = 1, 3 do
		minetest.register_node("infrastructure:marker_yellow_yellow_displacement_"..tostring(i), {
			tile_images = {
				"infrastructure_marker_top_yellow_yellow.png",
				"infrastructure_marker_bottom_side.png",
				"infrastructure_marker_bottom_side.png",
				"infrastructure_marker_bottom_side.png",
				"infrastructure_marker_side_yellow.png",
				"infrastructure_marker_side_yellow.png"
			},
			drawtype = "nodebox",
			paramtype = "light",
			paramtype2 = "facedir",
			groups = {cracky = 3, not_in_creative_inventory = 1},
			walkable = false,
			light_source = MARKER_LIGHT_RANGE,
			sunlight_propagates = true,
			drop = "infrastructure:marker_yellow_yellow",
			node_box = {
				type = "fixed",
				fixed = {
					{-1/8, -1/2 - i/4, -1/8, -1/16, -3/8 - i/4, 1/8},
					{-1/16, -1/2 - i/4, -1/8, 1/16, -7/16 - i/4, 1/8},
					{1/16, -1/2 - i/4, -1/8, 1/8, -3/8 - i/4, 1/8},
					{-1/16, -7/16 - i/4, -1/16, 1/16, -3/8 - i/4, 1/16}
				}
			},
			selection_box = {
				type = "fixed",
				fixed = {
					{-1/8, -1/2 - i/4, -1/8, -1/16, -3/8 - i/4, 1/8},
					{-1/16, -1/2 - i/4, -1/8, 1/16, -7/16 - i/4, 1/8},
					{1/16, -1/2 - i/4, -1/8, 1/8, -3/8 - i/4, 1/8},
					{-1/16, -7/16 - i/4, -1/16, 1/16, -3/8 - i/4, 1/16}
				}
			}
		})
	end

-- Raised pavement marker red/yellow
	minetest.register_node("infrastructure:marker_red_yellow", {
		description = "Raised pavement marker with red & yellow retroreflectors",
		tile_images = {
			"infrastructure_marker_top_red_yellow.png",
			"infrastructure_marker_bottom_side.png",
			"infrastructure_marker_bottom_side.png",
			"infrastructure_marker_bottom_side.png",
			"infrastructure_marker_side_yellow.png",
			"infrastructure_marker_side_red.png"
		},
		drawtype = "nodebox",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 3},
		walkable = false,
		light_source = MARKER_LIGHT_RANGE,
		sunlight_propagates = true,
		node_box = {
			type = "fixed",
			fixed = {
				{-1/8, -1/2, -1/8, -1/16, -3/8, 1/8},
				{-1/16, -1/2, -1/8, 1/16, -7/16, 1/8},
				{1/16, -1/2, -1/8, 1/8, -3/8, 1/8},
				{-1/16, -7/16, -1/16, 1/16, -3/8, 1/16}
			}
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-1/8, -1/2, -1/8, -1/16, -3/8, 1/8},
				{-1/16, -1/2, -1/8, 1/16, -7/16, 1/8},
				{1/16, -1/2, -1/8, 1/8, -3/8, 1/8},
				{-1/16, -7/16, -1/16, 1/16, -3/8, 1/16}
			}
		},

		after_place_node = function(pos, placer)
			displacement(pos, placer)
		end
	})

	for i = 1, 3 do
		minetest.register_node("infrastructure:marker_red_yellow_displacement_"..tostring(i), {
			tile_images = {
				"infrastructure_marker_top_red_yellow.png",
				"infrastructure_marker_bottom_side.png",
				"infrastructure_marker_bottom_side.png",
				"infrastructure_marker_bottom_side.png",
				"infrastructure_marker_side_yellow.png",
				"infrastructure_marker_side_red.png"
			},
			drawtype = "nodebox",
			paramtype = "light",
			paramtype2 = "facedir",
			groups = {cracky = 3, not_in_creative_inventory = 1},
			walkable = false,
			light_source = MARKER_LIGHT_RANGE,
			sunlight_propagates = true,
			drop = "infrastructure:marker_red_yellow",
			node_box = {
				type = "fixed",
				fixed = {
					{-1/8, -1/2 - i/4, -1/8, -1/16, -3/8 - i/4, 1/8},
					{-1/16, -1/2 - i/4, -1/8, 1/16, -7/16 - i/4, 1/8},
					{1/16, -1/2 - i/4, -1/8, 1/8, -3/8 - i/4, 1/8},
					{-1/16, -7/16 - i/4, -1/16, 1/16, -3/8 - i/4, 1/16}
				}
			},
			selection_box = {
				type = "fixed",
				fixed = {
					{-1/8, -1/2 - i/4, -1/8, -1/16, -3/8 - i/4, 1/8},
					{-1/16, -1/2 - i/4, -1/8, 1/16, -7/16 - i/4, 1/8},
					{1/16, -1/2 - i/4, -1/8, 1/8, -3/8 - i/4, 1/8},
					{-1/16, -7/16 - i/4, -1/16, 1/16, -3/8 - i/4, 1/16}
				}
			}
		})
	end

-- Retroreflective delineators
	minetest.register_node("infrastructure:delineator", {
		description = "Retroreflective delineator",
		tile_images = {
			"infrastructure_concrete.png",
			"infrastructure_concrete.png",
			"infrastructure_delineator_wrapper_right.png",
			"infrastructure_delineator_wrapper_left.png",
			"infrastructure_delineator_retroreflector_yellow.png",
			"infrastructure_delineator_retroreflector_red.png"
		},
		drawtype = "nodebox",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 3},
		light_source = DELINEATOR_LIGHT_RANGE,
		sunlight_propagates = true,
		node_box = {
			type = "fixed",
			fixed = {
				{-1/8, -1/2, -1/8, 1/8, 1/2, -1/16},
				{-1/16, -1/2, -1/16, 1/16, 1/2, 1/16},
				{-1/8, -1/2, 1/16, 1/8, 1/2, 1/8}
			}
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-1/8, -1/2, -1/8, 1/8, 1/2, -1/16},
				{-1/16, -1/2, -1/16, 1/16, 1/2, 1/16},
				{-1/8, -1/2, 1/16, 1/8, 1/2, 1/8}
			}
		},

		after_place_node = function(pos, placer)
			displacement(pos, placer)
		end
	})

	minetest.register_node("infrastructure:delineator_guardrail", {
		description = "Retroreflective delineator for guardrail",
		tile_images = {
			"infrastructure_concrete.png",
			"infrastructure_concrete.png",
			"infrastructure_delineator_wrapper_right.png",
			"infrastructure_delineator_wrapper_left.png",
			"[combine:32x32:0,12=infrastructure_delineator_retroreflector_yellow.png:0,-20=infrastructure_delineator_retroreflector_yellow.png",
			"[combine:32x32:0,12=infrastructure_delineator_retroreflector_red.png:0,-20=infrastructure_delineator_retroreflector_red.png"
		},
		drawtype = "nodebox",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 3},
		light_source = DELINEATOR_LIGHT_RANGE,
		sunlight_propagates = true,
		node_box = {
			type = "fixed",
			fixed = {
				{-1/8, -3/8, -1/32, 1/8, 1/8, 1/32},
				{1/8, -5/8, -1/16, 3/16, -1/4, 1/16}
			}
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-1/8, -3/8, -1/32, 1/8, 1/8, 1/32},
				{1/8, -5/8, -1/16, 3/16, -1/4, 1/16}
			}
		},

		after_place_node = function(pos, placer)
			displacement(pos, placer)
		end
	})

	for i = 1, 3 do
		minetest.register_node("infrastructure:delineator_displacement_"..tostring(i), {
			tile_images = {
				"infrastructure_concrete.png",
				"infrastructure_concrete.png",
				"[combine:32x32:0,"..tostring(i * 8).."=infrastructure_delineator_wrapper_right.png:0,"..tostring(i * 8 - 32).."=infrastructure_delineator_wrapper_right.png",
				"[combine:32x32:0,"..tostring(i * 8).."=infrastructure_delineator_wrapper_left.png:0,"..tostring(i * 8 - 32).."=infrastructure_delineator_wrapper_left.png",
				"[combine:32x32:0,"..tostring(i * 8).."=infrastructure_delineator_retroreflector_yellow.png:0,"..tostring(i * 8 - 32).."=infrastructure_delineator_retroreflector_yellow.png",
				"[combine:32x32:0,"..tostring(i * 8).."=infrastructure_delineator_retroreflector_red.png:0,"..tostring(i * 8 - 32).."=infrastructure_delineator_retroreflector_red.png"
			},
			drawtype = "nodebox",
			paramtype = "light",
			paramtype2 = "facedir",
			groups = {cracky = 3, not_in_creative_inventory = 1},
			light_source = DELINEATOR_LIGHT_RANGE,
			sunlight_propagates = true,
			drop = "infrastructure:delineator",
			node_box = {
				type = "fixed",
				fixed = {
					{-1/8, -1/2 - i/4, -1/8, 1/8, 1/2 - i/4, -1/16},
					{-1/16, -1/2 - i/4, -1/16, 1/16, 1/2 - i/4, 1/16},
					{-1/8, -1/2 - i/4, 1/16, 1/8, 1/2 - i/4, 1/8}
				}
			},
			selection_box = {
				type = "fixed",
				fixed = {
					{-1/8, -1/2 - i/4, -1/8, 1/8, 1/2 - i/4, -1/16},
					{-1/16, -1/2 - i/4, -1/16, 1/16, 1/2 - i/4, 1/16},
					{-1/8, -1/2 - i/4, 1/16, 1/8, 1/2 - i/4, 1/8}
				}
			}
		})

		minetest.register_node("infrastructure:delineator_guardrail_displacement_"..tostring(i), {
			tile_images = {
				"infrastructure_concrete.png",
				"infrastructure_concrete.png",
				"[combine:32x32:0,"..tostring(12 + i * 8).."=infrastructure_delineator_wrapper_right.png:0,"..tostring(i * 8 - 20).."=infrastructure_delineator_wrapper_right.png",
				"[combine:32x32:0,"..tostring(12 + i * 8).."=infrastructure_delineator_wrapper_left.png:0,"..tostring(i * 8 - 20).."=infrastructure_delineator_wrapper_left.png",
				"[combine:32x32:0,"..tostring(12 + i * 8).."=infrastructure_delineator_retroreflector_yellow.png:0,"..tostring(i * 8 - 20).."=infrastructure_delineator_retroreflector_yellow.png",
				"[combine:32x32:0,"..tostring(12 + i * 8).."=infrastructure_delineator_retroreflector_red.png:0,"..tostring(i * 8 - 20).."=infrastructure_delineator_retroreflector_red.png"
			},
			drawtype = "nodebox",
			paramtype = "light",
			paramtype2 = "facedir",
			groups = {cracky = 3, not_in_creative_inventory = 1},
			light_source = DELINEATOR_LIGHT_RANGE,
			sunlight_propagates = true,
			drop = "infrastructure:delineator_guardrail",
			node_box = {
				type = "fixed",
				fixed = {
					{-1/8, -3/8 - i/4, -1/32, 1/8, 1/8 - i/4, 1/32},
					{1/8, -5/8 - i/4, -1/16, 3/16, -1/4 - i/4, 1/16}
				}
			},
			selection_box = {
				type = "fixed",
				fixed = {
					{-1/8, -3/8 - i/4, -1/32, 1/8, 1/8 - i/4, 1/32},
					{1/8, -5/8 - i/4, -1/16, 3/16, -1/4 - i/4, 1/16}
				}
			}
		})
	end

-- Wire rope safety barrier
	minetest.register_node("infrastructure:wire_rope_safety_barrier", {
		description = "Wire rope safety barrier",
		tile_images = {
			"infrastructure_galvanized_steel.png",
			"infrastructure_galvanized_steel.png",
			"infrastructure_galvanized_steel.png",
			"infrastructure_galvanized_steel.png",
			"infrastructure_wire_rope_safety_barrier_back.png",
			"infrastructure_wire_rope_safety_barrier_front.png"
		},
		drawtype = "nodebox",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 2},
		light_source = 1,
		node_box = {
			type = "fixed",
			fixed = {
				{-1/8, -1/2, -1/16, 1/8, -1/4, 1/16},
				{-1/8, -1/2, -1/16, -1/16, -3/16, 1/16},
				{1/16, -1/2, -1/16, 1/8, 1/16, 1/16},
				{-1/8, -1/8, -1/16, 1/8, 0, 1/16},
				{-1/8, -1/8, -1/16, -1/16, 1/2, 1/16},
				{-1/8, 1/8, -1/16, 1/8, 1/4, 1/16},
				{1/16, 1/8, -1/16, 1/8, 1/2, 1/16},

				{-1/32, 1/4, -1/2, 1/32, 5/16, 1/2},
				{-1/32, 0, -1/2, 1/32, 1/16, 1/2},
				{-1/32, -1/4, -1/2, 1/32, -3/16, 1/2}
			}
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-1/8, -1/2, -1/16, 1/8, 1/2, 1/16},

				{-1/32, 1/4, -1/2, 1/32, 5/16, 1/2},
				{-1/32, 0, -1/2, 1/32, 1/16, 1/2},
				{-1/32, -1/4, -1/2, 1/32, -3/16, 1/2}
			}
		},

		after_place_node = function(pos, placer)
			displacement(pos, placer)
		end
	})

	for i = 1, 3 do
		minetest.register_node("infrastructure:wire_rope_safety_barrier_displacement_"..tostring(i), {
			tile_images = {
				"infrastructure_galvanized_steel.png",
				"infrastructure_galvanized_steel.png",
				"[combine:32x32:0,"..tostring(i * 8).."=infrastructure_galvanized_steel.png:0,"..tostring(i * 8 - 32).."=infrastructure_galvanized_steel.png",
				"[combine:32x32:0,"..tostring(i * 8).."=infrastructure_galvanized_steel.png:0,"..tostring(i * 8 - 32).."=infrastructure_galvanized_steel.png",
				"[combine:32x32:0,"..tostring(i * 8).."=infrastructure_wire_rope_safety_barrier_back.png:0,"..tostring(i * 8 - 32).."=infrastructure_wire_rope_safety_barrier_back.png",
				"[combine:32x32:0,"..tostring(i * 8).."=infrastructure_wire_rope_safety_barrier_front.png:0,"..tostring(i * 8 - 32).."=infrastructure_wire_rope_safety_barrier_front.png"
			},
			drawtype = "nodebox",
			paramtype = "light",
			paramtype2 = "facedir",
			groups = {cracky = 2, not_in_creative_inventory = 1},
			light_source = 1,
			drop = "infrastructure:wire_rope_safety_barrier",
			node_box = {
				type = "fixed",
				fixed = {
					{-1/8, -1/2 - i/4, -1/16, 1/8, -1/4 - i/4, 1/16},
					{-1/8, -1/2 - i/4, -1/16, -1/16, -3/16 - i/4, 1/16},
					{1/16, -1/2 - i/4, -1/16, 1/8, 1/16 - i/4, 1/16},
					{-1/8, -1/8 - i/4, -1/16, 1/8, 0 - i/4, 1/16},
					{-1/8, -1/8 - i/4, -1/16, -1/16, 1/2 - i/4, 1/16},
					{-1/8, 1/8 - i/4, -1/16, 1/8, 1/4 - i/4, 1/16},
					{1/16, 1/8 - i/4, -1/16, 1/8, 1/2 - i/4, 1/16},

					{-1/32, 1/4 - i/4, -1/2, 1/32, 5/16 - i/4, 1/2},
					{-1/32, 0 - i/4, -1/2, 1/32, 1/16 - i/4, 1/2},
					{-1/32, -1/4 - i/4, -1/2, 1/32, -3/16 - i/4, 1/2}
				}
			},
			selection_box = {
				type = "fixed",
				fixed = {
					{-1/8, -1/2 - i/4, -1/16, 1/8, 1/2 - i/4, 1/16},

					{-1/32, 1/4 - i/4, -1/2, 1/32, 5/16 - i/4, 1/2},
					{-1/32, 0 - i/4, -1/2, 1/32, 1/16 - i/4, 1/2},
					{-1/32, -1/4 - i/4, -1/2, 1/32, -3/16 - i/4, 1/2}
				}
			}
		})
	end

-- Cable barrier terminal
	minetest.register_node("infrastructure:cable_barrier_terminal", {
		description = "Cable barrier terminal",
		tile_images = {
			"infrastructure_galvanized_steel.png",
			"infrastructure_galvanized_steel.png",
			"infrastructure_galvanized_steel.png",
			"infrastructure_galvanized_steel.png",
			"infrastructure_cable_barrier_terminal_back.png",
			"infrastructure_cable_barrier_terminal_front.png"
		},
		drawtype = "nodebox",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 2},
		light_source = 1,
		node_box = {
			type = "fixed",
			fixed = {
				{-1/4, -1/2, -1/2, 1/4, -3/8, 1/2},
				{-1/4, -3/8, -1/4, 1/4, 1/2, -1/8},
				{-1/4, -3/8, -1/8, -3/16, 0, 1/8},
				{3/16, -3/8, -1/8, 1/4, 0, 1/8},

				{-1/16, 7/32, -3/8, 1/16, 11/32, 1/4},
				{-1/16, -1/32, -3/8, 1/16, 3/32, 1/4},
				{-1/16, -9/32, -3/8, 1/16, -5/32, 1/4},

				{-1/32, 1/4, 0, 1/32, 5/16, 1/2},
				{-1/32, 0, 0, 1/32, 1/16, 1/2},
				{-1/32, -1/4, 0, 1/32, -3/16, 1/2}
			}
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-1/4, -1/2, -1/2, 1/4, -3/8, 1/2},
				{-1/4, -3/8, -1/4, 1/4, 1/2, -1/8},
				{-1/4, -3/8, -1/8, -3/16, 0, 1/8},
				{3/16, -3/8, -1/8, 1/4, 0, 1/8},

				{-1/16, 7/32, -3/8, 1/16, 11/32, 1/4},
				{-1/16, -1/32, -3/8, 1/16, 3/32, 1/4},
				{-1/16, -9/32, -3/8, 1/16, -5/32, 1/4},

				{-1/32, 1/4, 0, 1/32, 5/16, 1/2},
				{-1/32, 0, 0, 1/32, 1/16, 1/2},
				{-1/32, -1/4, 0, 1/32, -3/16, 1/2}
			}
		},

		after_place_node = function(pos, placer)
			displacement(pos, placer)
		end
	})

	for i = 1, 3 do
		minetest.register_node("infrastructure:cable_barrier_terminal_displacement_"..tostring(i), {
			tile_images = {
				"infrastructure_galvanized_steel.png",
				"infrastructure_galvanized_steel.png",
				"[combine:32x32:0,"..tostring(i * 8).."=infrastructure_galvanized_steel.png:0,"..tostring(i * 8 - 32).."=infrastructure_galvanized_steel.png",
				"[combine:32x32:0,"..tostring(i * 8).."=infrastructure_galvanized_steel.png:0,"..tostring(i * 8 - 32).."=infrastructure_galvanized_steel.png",
				"[combine:32x32:0,"..tostring(i * 8).."=infrastructure_cable_barrier_terminal_back.png:0,"..tostring(i * 8 - 32).."=infrastructure_cable_barrier_terminal_back.png",
				"[combine:32x32:0,"..tostring(i * 8).."=infrastructure_cable_barrier_terminal_front.png:0,"..tostring(i * 8 - 32).."=infrastructure_cable_barrier_terminal_front.png"
			},
			drawtype = "nodebox",
			paramtype = "light",
			paramtype2 = "facedir",
			groups = {cracky = 2, not_in_creative_inventory = 1},
			light_source = 1,
			drop = "infrastructure:cable_barrier_terminal",
			node_box = {
				type = "fixed",
				fixed = {
					{-1/4, -1/2 - i/4, -1/2, 1/4, -3/8 - i/4, 1/2},
					{-1/4, -3/8 - i/4, -1/4, 1/4, 1/2 - i/4, -1/8},
					{-1/4, -3/8 - i/4, -1/8, -3/16, 0 - i/4, 1/8},
					{3/16, -3/8 - i/4, -1/8, 1/4, 0 - i/4, 1/8},

					{-1/16, 7/32 - i/4, -3/8, 1/16, 11/32 - i/4, 1/4},
					{-1/16, -1/32 - i/4, -3/8, 1/16, 3/32 - i/4, 1/4},
					{-1/16, -9/32 - i/4, -3/8, 1/16, -5/32 - i/4, 1/4},

					{-1/32, 1/4 - i/4, 0, 1/32, 5/16 - i/4, 1/2},
					{-1/32, 0 - i/4, 0, 1/32, 1/16 - i/4, 1/2},
					{-1/32, -1/4 - i/4, 0, 1/32, -3/16 - i/4, 1/2}
				}
			},
			selection_box = {
				type = "fixed",
				fixed = {
					{-1/4, -1/2 - i/4, -1/2, 1/4, -3/8 - i/4, 1/2},
					{-1/4, -3/8 - i/4, -1/4, 1/4, 1/2 - i/4, -1/8},
					{-1/4, -3/8 - i/4, -1/8, -3/16, 0 - i/4, 1/8},
					{3/16, -3/8 - i/4, -1/8, 1/4, 0 - i/4, 1/8},

					{-1/16, 7/32 - i/4, -3/8, 1/16, 11/32 - i/4, 1/4},
					{-1/16, -1/32 - i/4, -3/8, 1/16, 3/32 - i/4, 1/4},
					{-1/16, -9/32 - i/4, -3/8, 1/16, -5/32 - i/4, 1/4},

					{-1/32, 1/4 - i/4, 0, 1/32, 5/16 - i/4, 1/2},
					{-1/32, 0 - i/4, 0, 1/32, 1/16 - i/4, 1/2},
					{-1/32, -1/4 - i/4, 0, 1/32, -3/16 - i/4, 1/2}
				}
			}
		})
	end

-- Corrugated guide rail
	minetest.register_node("infrastructure:corrugated_guide_rail", {
		description = "Corrugated guide rail",
		tile_images = {
			"infrastructure_galvanized_steel.png",
			"infrastructure_galvanized_steel.png",
			"infrastructure_corrugated_guide_rail_side.png",
			"infrastructure_corrugated_guide_rail_side.png",
			"infrastructure_corrugated_guide_rail_back.png",
			"infrastructure_corrugated_guide_rail_front.png"
		},
		drawtype = "nodebox",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 2},
		light_source = 1,
		node_box = {
			type = "fixed",
			fixed = {
				{-1/8, -1/2, -1/8, 1/8, 1/2, -1/16},
				{-1/16, -1/2, -1/16, 1/16, 1/2, 1/16},
				{-1/8, -1/2, 1/16, 1/8, 1/2, 1/8},

				{-1/2, 1/4, -1/4, 1/2, 3/8, -1/8},
				{-1/2, 1/8, -3/8, 1/2, 1/4, -1/4},
				{-1/2, 0, -1/4, 1/2, 1/8, -1/8},
				{-1/2, -1/8, -3/8, 1/2, 0, -1/4},
				{-1/2, -1/4, -1/4, 1/2, -1/8, -1/8}
			}
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-1/8, -1/2, -1/8, 1/8, 1/2, 1/8},

				{-1/2, 1/4, -1/4, 1/2, 3/8, -1/8},
				{-1/2, 1/8, -3/8, 1/2, 1/4, -1/4},
				{-1/2, 0, -1/4, 1/2, 1/8, -1/8},
				{-1/2, -1/8, -3/8, 1/2, 0, -1/4},
				{-1/2, -1/4, -1/4, 1/2, -1/8, -1/8}
			}
		},

		after_place_node = function(pos, placer)
			displacement(pos, placer)
		end
	})

	for i = 1, 3 do
		minetest.register_node("infrastructure:corrugated_guide_rail_displacement_"..tostring(i), {
			tile_images = {
				"infrastructure_galvanized_steel.png",
				"infrastructure_galvanized_steel.png",
				"[combine:32x32:0,"..tostring(i * 8).."=infrastructure_corrugated_guide_rail_side.png:0,"..tostring(i * 8 - 32).."=infrastructure_corrugated_guide_rail_side.png",
				"[combine:32x32:0,"..tostring(i * 8).."=infrastructure_corrugated_guide_rail_side.png:0,"..tostring(i * 8 - 32).."=infrastructure_corrugated_guide_rail_side.png",
				"[combine:32x32:0,"..tostring(i * 8).."=infrastructure_corrugated_guide_rail_back.png:0,"..tostring(i * 8 - 32).."=infrastructure_corrugated_guide_rail_back.png",
				"[combine:32x32:0,"..tostring(i * 8).."=infrastructure_corrugated_guide_rail_front.png:0,"..tostring(i * 8 - 32).."=infrastructure_corrugated_guide_rail_front.png"
			},
			drawtype = "nodebox",
			paramtype = "light",
			paramtype2 = "facedir",
			groups = {cracky = 2, not_in_creative_inventory = 1},
			light_source = 1,
			drop = "infrastructure:corrugated_guide_rail",
			node_box = {
				type = "fixed",
				fixed = {
					{-1/8, -1/2 - i/4, -1/8, 1/8, 1/2 - i/4, -1/16},
					{-1/16, -1/2 - i/4, -1/16, 1/16, 1/2 - i/4, 1/16},
					{-1/8, -1/2 - i/4, 1/16, 1/8, 1/2 - i/4, 1/8},

					{-1/2, 1/4 - i/4, -1/4, 1/2, 3/8 - i/4, -1/8},
					{-1/2, 1/8 - i/4, -3/8, 1/2, 1/4 - i/4, -1/4},
					{-1/2, 0 - i/4, -1/4, 1/2, 1/8 - i/4, -1/8},
					{-1/2, -1/8 - i/4, -3/8, 1/2, 0 - i/4, -1/4},
					{-1/2, -1/4 - i/4, -1/4, 1/2, -1/8 - i/4, -1/8}
				}
			},
			selection_box = {
				type = "fixed",
				fixed = {
					{-1/8, -1/2 - i/4, -1/8, 1/8, 1/2 - i/4, 1/8},

					{-1/2, 1/4 - i/4, -1/4, 1/2, 3/8 - i/4, -1/8},
					{-1/2, 1/8 - i/4, -3/8, 1/2, 1/4 - i/4, -1/4},
					{-1/2, 0 - i/4, -1/4, 1/2, 1/8 - i/4, -1/8},
					{-1/2, -1/8 - i/4, -3/8, 1/2, 0 - i/4, -1/4},
					{-1/2, -1/4 - i/4, -1/4, 1/2, -1/8 - i/4, -1/8}
				}
			}
		})
	end

-- Energy absorbing terminal
	minetest.register_node("infrastructure:energy_absorbing_terminal", {
		description = "Energy absorbing terminal",
		tile_images = {
			"infrastructure_galvanized_steel.png",
			"infrastructure_galvanized_steel.png",
			"infrastructure_galvanized_steel.png",
			"infrastructure_galvanized_steel.png",
			"infrastructure_energy_absorbing_terminal_back.png",
			"infrastructure_energy_absorbing_terminal_front.png"
		},
		drawtype = "nodebox",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 2},
		light_source = ENERGY_ABSORBING_TERMINAL_LIGHT_RANGE,
		node_box = {
			type = "fixed",
			fixed = {
				{-1/2, -1/4, 1/8, 0, 1/2, 1/4},
				{-3/8, -1/4, 1/4, -1/8, 3/8, 1/2}
			}
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-1/2, -1/4, 1/8, 0, 1/2, 1/4},
				{-3/8, -1/4, 1/4, -1/8, 3/8, 1/2}
			}
		},

		after_place_node = function(pos, placer)
			displacement(pos, placer)
		end
	})

	minetest.register_node("infrastructure:energy_absorbing_terminal_inversed", {
		description = "Energy absorbing terminal inversed",
		tile_images = {
			"infrastructure_galvanized_steel.png",
			"infrastructure_galvanized_steel.png",
			"infrastructure_galvanized_steel.png",
			"infrastructure_galvanized_steel.png",
			"infrastructure_energy_absorbing_terminal_back.png",
			"infrastructure_energy_absorbing_terminal_front.png"
		},
		drawtype = "nodebox",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 2},
		light_source = ENERGY_ABSORBING_TERMINAL_LIGHT_RANGE,
		node_box = {
			type = "fixed",
			fixed = {
				{0, -1/4, 1/8, 1/2, 1/2, 1/4},
				{1/8, -1/4, 1/4, 3/8, 3/8, 1/2}
			}
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{0, -1/4, 1/8, 1/2, 1/2, 1/4},
				{1/8, -1/4, 1/4, 3/8, 3/8, 1/2}
			}
		},

		after_place_node = function(pos, placer)
			displacement(pos, placer)
		end
	})

	for i = 1, 3 do
		minetest.register_node("infrastructure:energy_absorbing_terminal_displacement_"..tostring(i), {
			tile_images = {
				"infrastructure_galvanized_steel.png",
				"infrastructure_galvanized_steel.png",
				"[combine:32x32:0,"..tostring(i * 8).."=infrastructure_galvanized_steel.png:0,"..tostring(i * 8 - 32).."=infrastructure_galvanized_steel.png",
				"[combine:32x32:0,"..tostring(i * 8).."=infrastructure_galvanized_steel.png:0,"..tostring(i * 8 - 32).."=infrastructure_galvanized_steel.png",
				"[combine:32x32:0,"..tostring(i * 8).."=infrastructure_energy_absorbing_terminal_back.png:0,"..tostring(i * 8 - 32).."=infrastructure_energy_absorbing_terminal_back.png",
				"[combine:32x32:0,"..tostring(i * 8).."=infrastructure_energy_absorbing_terminal_front.png:0,"..tostring(i * 8 - 32).."=infrastructure_energy_absorbing_terminal_front.png"
			},
			drawtype = "nodebox",
			paramtype = "light",
			paramtype2 = "facedir",
			groups = {cracky = 2, not_in_creative_inventory = 1},
			light_source = ENERGY_ABSORBING_TERMINAL_LIGHT_RANGE,
			drop = "infrastructure:energy_absorbing_terminal",
			node_box = {
				type = "fixed",
				fixed = {
					{-1/2, -1/4 - i/4, 1/8, 0, 1/2 - i/4, 1/4},
					{-3/8, -1/4 - i/4, 1/4, -1/8, 3/8 - i/4, 1/2}
				}
			},
			selection_box = {
				type = "fixed",
				fixed = {
					{-1/2, -1/4 - i/4, 1/8, 0, 1/2 - i/4, 1/4},
					{-3/8, -1/4 - i/4, 1/4, -1/8, 3/8 - i/4, 1/2}
				}
			}
		})

		minetest.register_node("infrastructure:energy_absorbing_terminal_inversed_displacement_"..tostring(i), {
			tile_images = {
				"infrastructure_galvanized_steel.png",
				"infrastructure_galvanized_steel.png",
				"[combine:32x32:0,"..tostring(i * 8).."=infrastructure_galvanized_steel.png:0,"..tostring(i * 8 - 32).."=infrastructure_galvanized_steel.png",
				"[combine:32x32:0,"..tostring(i * 8).."=infrastructure_galvanized_steel.png:0,"..tostring(i * 8 - 32).."=infrastructure_galvanized_steel.png",
				"[combine:32x32:0,"..tostring(i * 8).."=infrastructure_energy_absorbing_terminal_back.png:0,"..tostring(i * 8 - 32).."=infrastructure_energy_absorbing_terminal_back.png",
				"[combine:32x32:0,"..tostring(i * 8).."=infrastructure_energy_absorbing_terminal_front.png:0,"..tostring(i * 8 - 32).."=infrastructure_energy_absorbing_terminal_front.png"
			},
			drawtype = "nodebox",
			paramtype = "light",
			paramtype2 = "facedir",
			groups = {cracky = 2, not_in_creative_inventory = 1},
			light_source = ENERGY_ABSORBING_TERMINAL_LIGHT_RANGE,
			drop = "infrastructure:energy_absorbing_terminal_inversed",
			node_box = {
				type = "fixed",
				fixed = {
					{0, -1/4 - i/4, 1/8, 1/2, 1/2 - i/4, 1/4},
					{1/8, -1/4 - i/4, 1/4, 3/8, 3/8 - i/4, 1/2}
				}
			},
			selection_box = {
				type = "fixed",
				fixed = {
					{0, -1/4 - i/4, 1/8, 1/2, 1/2 - i/4, 1/4},
					{1/8, -1/4 - i/4, 1/4, 3/8, 3/8 - i/4, 1/2}
				}
			}
		})
	end

-- Fitch barrel
	minetest.register_node("infrastructure:fitch_barrel", {
		description = "Fitch barrel",
		tile_images = {
			"infrastructure_fitch_barrel_top.png",
			"infrastructure_fitch_barrel_bottom.png",
			"infrastructure_fitch_barrel_side.png",
			"infrastructure_fitch_barrel_side.png",
			"infrastructure_fitch_barrel_side.png",
			"infrastructure_fitch_barrel_side.png"
		},
		drawtype = "nodebox",
		paramtype = "light",
		groups = {cracky = 2},
		light_source = ENERGY_ABSORBING_TERMINAL_LIGHT_RANGE,
		node_box = {
			type = "fixed",
			fixed = {-3/8, -1/2, -3/8, 3/8, 1/2, 3/8}
		},
		selection_box = {
			type = "fixed",
			fixed = {-3/8, -1/2, -3/8, 3/8, 1/2, 3/8}
		},

		after_place_node = function(pos, placer)
			displacement(pos, placer)
		end
	})

	for i = 1, 3 do
		minetest.register_node("infrastructure:fitch_barrel_displacement_"..tostring(i), {
			tile_images = {
				"infrastructure_fitch_barrel_top.png",
				"infrastructure_fitch_barrel_bottom.png",
				"[combine:32x32:0,"..tostring(i * 8).."=infrastructure_fitch_barrel_side.png:0,"..tostring(i * 8 - 32).."=infrastructure_fitch_barrel_side.png",
				"[combine:32x32:0,"..tostring(i * 8).."=infrastructure_fitch_barrel_side.png:0,"..tostring(i * 8 - 32).."=infrastructure_fitch_barrel_side.png",
				"[combine:32x32:0,"..tostring(i * 8).."=infrastructure_fitch_barrel_side.png:0,"..tostring(i * 8 - 32).."=infrastructure_fitch_barrel_side.png",
				"[combine:32x32:0,"..tostring(i * 8).."=infrastructure_fitch_barrel_side.png:0,"..tostring(i * 8 - 32).."=infrastructure_fitch_barrel_side.png"
			},
			drawtype = "nodebox",
			paramtype = "light",
			groups = {cracky = 2, not_in_creative_inventory = 1},
			light_source = ENERGY_ABSORBING_TERMINAL_LIGHT_RANGE,
			drop = "infrastructure:fitch_barrel",
			node_box = {
				type = "fixed",
				fixed = {-3/8, -1/2 - i/4, -3/8, 3/8, 1/2 - i/4, 3/8}
			},
			selection_box = {
				type = "fixed",
				fixed = {-3/8, -1/2 - i/4, -3/8, 3/8, 1/2 - i/4, 3/8}
			}
		})
	end

-- Crowd control barricade
	minetest.register_node("infrastructure:crowd_control_barricade", {
		description = "Crowd control barricade",
		tile_images = {
			"infrastructure_galvanized_steel.png",
			"infrastructure_galvanized_steel.png",
			"infrastructure_galvanized_steel.png",
			"infrastructure_galvanized_steel.png",
			"infrastructure_crowd_control_barricade_back.png",
			"infrastructure_crowd_control_barricade_front.png"
		},
		drawtype = "nodebox",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 2},
		light_source = 1,
		node_box = {
			type = "fixed",
			fixed = {
				{-1/2, -1/4, 0, 1/2, 1/2, 0},

				{-7/16, -1/2, -1/32, -3/8, 1/8, 1/32},
				{3/8, -1/2, -1/32, 7/16, 1/8, 1/32},

				{-7/16, -1/2, -1/4, -3/8, -7/16, 1/4},
				{3/8, -1/2, -1/4, 7/16, -7/16, 1/4}
			}
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-1/2, -1/4, 0, 1/2, 1/2, 0},

				{-7/16, -1/2, -1/32, -3/8, 1/8, 1/32},
				{3/8, -1/2, -1/32, 7/16, 1/8, 1/32},

				{-7/16, -1/2, -1/4, -3/8, -7/16, 1/4},
				{3/8, -1/2, -1/4, 7/16, -7/16, 1/4}
			}
		},

		after_place_node = function(pos, placer)
			displacement(pos, placer)
		end
	})

	for i = 1, 3 do
		minetest.register_node("infrastructure:crowd_control_barricade_"..tostring(i), {
			tile_images = {
				"infrastructure_galvanized_steel.png",
				"infrastructure_galvanized_steel.png",
				"infrastructure_galvanized_steel.png",
				"infrastructure_galvanized_steel.png",
				"[combine:32x32:0,"..tostring(i * 8).."=infrastructure_crowd_control_barricade_back.png:0,"..tostring(i * 8 - 32).."=infrastructure_crowd_control_barricade_back.png",
				"[combine:32x32:0,"..tostring(i * 8).."=infrastructure_crowd_control_barricade_front.png:0,"..tostring(i * 8 - 32).."=infrastructure_crowd_control_barricade_front.png"
			},
			drawtype = "nodebox",
			paramtype = "light",
			paramtype2 = "facedir",
			groups = {cracky = 2, not_in_creative_inventory = 1},
			light_source = 1,
			drop = "infrastructure:crowd_control_barricade",
			node_box = {
				type = "fixed",
				fixed = {
					{-1/2, -1/4 - i/4, 0, 1/2, 1/2 - i/4, 0},

					{-7/16, -1/2 - i/4, -1/32, -3/8, 1/8 - i/4, 1/32},
					{3/8, -1/2 - i/4, -1/32, 7/16, 1/8 - i/4, 1/32},

					{-7/16, -1/2 - i/4, -1/4, -3/8, -7/16 - i/4, 1/4},
					{3/8, -1/2 - i/4, -1/4, 7/16, -7/16 - i/4, 1/4}
				}
			},
			selection_box = {
				type = "fixed",
				fixed = {
					{-1/2, -1/4 - i/4, 0, 1/2, 1/2 - i/4, 0},

					{-7/16, -1/2 - i/4, -1/32, -3/8, 1/8 - i/4, 1/32},
					{3/8, -1/2 - i/4, -1/32, 7/16, 1/8 - i/4, 1/32},

					{-7/16, -1/2 - i/4, -1/4, -3/8, -7/16 - i/4, 1/4},
					{3/8, -1/2 - i/4, -1/4, 7/16, -7/16 - i/4, 1/4}
				}
			}
		})
	end

-- Anti-dazzling panel
	minetest.register_node("infrastructure:anti_dazzling_panel", {
		description = "Anti-dazzling panel",
		tile_images = {
			"infrastructure_anti_dazzling_panel_top_bottom.png",
			"infrastructure_anti_dazzling_panel_top_bottom.png",
			"infrastructure_anti_dazzling_panel_side.png",
			"infrastructure_anti_dazzling_panel_side.png",
			"infrastructure_anti_dazzling_panel_side.png",
			"infrastructure_anti_dazzling_panel_side.png"
		},
		drawtype = "nodebox",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 2},
		light_source = 1,
		node_box = {
			type = "fixed",
			fixed = {
				{-1/4, -1/2, 0, 1/4, 1/2, 0},
				{-1/8, -1/2, -1/16, 1/8, -3/8, 1/16}
			}
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-1/4, -1/2, 0, 1/4, 1/2, 0},
				{-1/8, -1/2, -1/16, 1/8, -3/8, 1/16}
			}
		},

		after_place_node = function(pos, placer)
			displacement(pos, placer)
		end
	})

	for i = 1, 3 do
		minetest.register_node("infrastructure:anti_dazzling_panel_displacement_"..tostring(i), {
			tile_images = {
				"infrastructure_anti_dazzling_panel_top_bottom.png",
				"infrastructure_anti_dazzling_panel_top_bottom.png",
				"[combine:32x32:0,"..tostring(i * 8).."=infrastructure_anti_dazzling_panel_side.png:0,"..tostring(i * 8 - 32).."=infrastructure_anti_dazzling_panel_side.png",
				"[combine:32x32:0,"..tostring(i * 8).."=infrastructure_anti_dazzling_panel_side.png:0,"..tostring(i * 8 - 32).."=infrastructure_anti_dazzling_panel_side.png",
				"[combine:32x32:0,"..tostring(i * 8).."=infrastructure_anti_dazzling_panel_side.png:0,"..tostring(i * 8 - 32).."=infrastructure_anti_dazzling_panel_side.png",
				"[combine:32x32:0,"..tostring(i * 8).."=infrastructure_anti_dazzling_panel_side.png:0,"..tostring(i * 8 - 32).."=infrastructure_anti_dazzling_panel_side.png"
			},
			drawtype = "nodebox",
			paramtype = "light",
			paramtype2 = "facedir",
			groups = {cracky = 2, not_in_creative_inventory = 1},
			light_source = 1,
			drop = "infrastructure:anti_dazzling_panel",
			node_box = {
				type = "fixed",
				fixed = {
					{-1/4, -1/2 - i/4, 0, 1/4, 1/2 - i/4, 0},
					{-1/8, -1/2 - i/4, -1/16, 1/8, -3/8 - i/4, 1/16}
				}
			},
			selection_box = {
				type = "fixed",
				fixed = {
					{-1/4, -1/2 - i/4, 0, 1/4, 1/2 - i/4, 0},
					{-1/8, -1/2 - i/4, -1/16, 1/8, -3/8 - i/4, 1/16}
				}
			}
		})
	end

-- Traffic cone
	minetest.register_node("infrastructure:traffic_cone", {
		description = "Traffic cone",
		tile_images = {
			"infrastructure_traffic_cone_top.png",
			"infrastructure_traffic_cone_bottom.png",
			"infrastructure_traffic_cone_side.png",
			"infrastructure_traffic_cone_side.png",
			"infrastructure_traffic_cone_side.png",
			"infrastructure_traffic_cone_side.png"
		},
		drawtype = "nodebox",
		paramtype = "light",
		groups = {cracky = 2},
		walkable = false,
		light_source = ENERGY_ABSORBING_TERMINAL_LIGHT_RANGE,
		node_box = {
			type = "fixed",
			fixed = {
				{-1/4, -1/2, 0, 1/4, 1/4, 0},
				{0, -1/2, -1/4, 0, 1/4, 1/4},

				{-3/8, -1/2, -1/8, 3/8, -3/8, 1/8},
				{-1/8, -1/2, -3/8, 1/8, -3/8, 3/8},

				{-3/8, -1/2 + 0.001, -3/8, 3/8, -1/2 + 0.001, 3/8}
			}
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-1/4, -1/2, 0, 1/4, 1/4, 0},
				{0, -1/2, -1/4, 0, 1/4, 1/4},

				{-3/8, -1/2, -1/8, 3/8, -3/8, 1/8},
				{-1/8, -1/2, -3/8, 1/8, -3/8, 3/8},

				{-3/8, -1/2 + 0.001, -3/8, 3/8, -1/2 + 0.001, 3/8}
			}
		},

		after_place_node = function(pos, placer)
			displacement(pos, placer)
		end
	})

	for i = 1, 3 do
		minetest.register_node("infrastructure:traffic_cone_displacement_"..tostring(i), {
			tile_images = {
				"infrastructure_traffic_cone_top.png",
				"infrastructure_traffic_cone_bottom.png",
				"[combine:32x32:0,"..tostring(i * 8).."=infrastructure_traffic_cone_side.png:0,"..tostring(i * 8 - 32).."=infrastructure_traffic_cone_side.png",
				"[combine:32x32:0,"..tostring(i * 8).."=infrastructure_traffic_cone_side.png:0,"..tostring(i * 8 - 32).."=infrastructure_traffic_cone_side.png",
				"[combine:32x32:0,"..tostring(i * 8).."=infrastructure_traffic_cone_side.png:0,"..tostring(i * 8 - 32).."=infrastructure_traffic_cone_side.png",
				"[combine:32x32:0,"..tostring(i * 8).."=infrastructure_traffic_cone_side.png:0,"..tostring(i * 8 - 32).."=infrastructure_traffic_cone_side.png"
			},
			drawtype = "nodebox",
			paramtype = "light",
			groups = {cracky = 2, not_in_creative_inventory = 1},
			walkable = false,
			light_source = ENERGY_ABSORBING_TERMINAL_LIGHT_RANGE,
			drop = "infrastructure:traffic_cone",
			node_box = {
				type = "fixed",
				fixed = {
					{-1/4, -1/2 - i/4, 0, 1/4, 1/4 - i/4, 0},
					{0, -1/2 - i/4, -1/4, 0, 1/4 - i/4, 1/4},

					{-3/8, -1/2 - i/4, -1/8, 3/8, -3/8 - i/4, 1/8},
					{-1/8, -1/2 - i/4, -3/8, 1/8, -3/8 - i/4, 3/8},

					{-3/8, -1/2 + 0.001 - i/4, -3/8, 3/8, -1/2 + 0.001 - i/4, 3/8}
				}
			},
			selection_box = {
				type = "fixed",
				fixed = {
					{-1/4, -1/2 - i/4, 0, 1/4, 1/4 - i/4, 0},
					{0, -1/2 - i/4, -1/4, 0, 1/4 - i/4, 1/4},

					{-3/8, -1/2 - i/4, -1/8, 3/8, -3/8 - i/4, 1/8},
					{-1/8, -1/2 - i/4, -3/8, 1/8, -3/8 - i/4, 3/8},

					{-3/8, -1/2 + 0.001 - i/4, -3/8, 3/8, -1/2 + 0.001 - i/4, 3/8}
				}
			}
		})
	end

-- Noise barrier
	minetest.register_node("infrastructure:noise_barrier", {
		description = "Noise barrier",
		tile_images = {
			"infrastructure_galvanized_steel.png",
			"infrastructure_galvanized_steel.png",
			"infrastructure_galvanized_steel.png",
			"infrastructure_galvanized_steel.png",
			"infrastructure_noise_barrier.png",
			"infrastructure_noise_barrier.png"
		},
		drawtype = "nodebox",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 2},
		light_source = 1,
		node_box = {
			type = "fixed",
			fixed = {
				{-1/2, -1/2, 5/16, 1/2, 1/2, 7/16},

				{-1/2, -1/2, 1/4, 1/2, -7/16, 1/2},
				{-1/2, 7/16, 1/4, 1/2, 1/2, 1/2},
				{-1/2, -1/2, 1/4, -7/16, 1/2, 1/2},
				{7/16, -1/2, 1/4, 1/2, 1/2, 1/2}
			}
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-1/2, -1/2, 1/4, 1/2, 1/2, 1/2},
			}
		}
	})
