mesecons_plus = {}

local modpath = minetest.get_modpath("mesecons_plus")

--dofile (modpath .. "flipflop.lua")
--dofile (modpath .. "counter.lua")

if minetest.setting_getbool("log_mods") then
	minetest.log("action", S("[mesecons_plus] loaded."))
end