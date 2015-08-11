--= Node Inspector (click on node to give details)

minetest.register_tool("arbmods:node_inspector", {
   description = "Node Inspector",
   inventory_image = "default_tool_steelaxe.png",
   liquids_pointable = true,

   on_use = function(itemstack, user, pointed_thing)

      local pll = user:get_player_name()
      local pos = pointed_thing.under

      if pointed_thing.type ~= "node" then
         desc = "..."
      else
         local node = minetest.get_node(pos)
         desc = node.name
      end

      -- Clear HUD element
      user:hud_remove(huds[pll])

      -- Display new HUD text
      local off = {x=0, y=-80}
      huds[pll] = user:hud_add({
         hud_elem_type = "text",
         position = {x=0.5, y=1},
         offset = off,
         alignment = {x=0, y=0},
         number = 0xFFFFFF ,
         text = desc,
      })
   end,
})