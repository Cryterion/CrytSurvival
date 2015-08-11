
local FlipFlopOldState = 0

local flipflop_pulse = function (pos, node)
end

mesecon.register_node("mesecons_flipflop:mesecon_flipflop", 
{
	paramtype2="facedir",
	description="Flip Flop",
	sounds = default.node_sound_stone_defaults(),
	mesecons = 
	{
		effector = { action_on = flipflop_pulse },
	}
}

