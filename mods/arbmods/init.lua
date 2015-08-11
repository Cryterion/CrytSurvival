#this mod has arbitary recipes etc specifically for the game

local arbmods = {}

local modpath = minetest.get_modpath("arbmods")

dofile(modpath.."/nodes.lua")
--dofile(modpath.."/aliases.lua")
dofile(modpath.."/inspect.lua")
dofile(modpath.."/recipes.lua")