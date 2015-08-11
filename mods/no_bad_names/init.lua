-- No guests and misleading names mod.
-- By VanessaE, sfan5, and kaeza.

local disallowed = {
-- 
	["[Gg]u[Ee3]st"]			=	"Guest accounts are disallowed on this server.  "..
									"Please choose a proper username and try again.",
	["[Ss]queakecrafter"]		=	"Squeak accounts are disallowed on this server.  "..
									"Please choose a new username and try again.",
	["[4a]dm[1il]n"]			=	"That is a clearly false, misleading, or otherwise disallowed username. "..
									"Please choose a unique username and try again.",
	["[Oo0]wn[Ee3]r"]			= 	"That is a clearly false, misleading, or otherwise disallowed username. "..
									"Please choose a unique username and try again.",
	["[Ff][Uu][CckK][Kk]"]		= 	"That is a clearly false, misleading, or otherwise disallowed username. "..
									"Please choose a unique username and try again.",
	["[Ss][Hh][Ii1][Tt]"]		= 	"That is a clearly false, misleading, or otherwise disallowed username. "..
									"Please choose a unique username and try again.",
	["[Pp][Ee3Ii1][Nn][Ii1][Ss52]"] = 	"That is a clearly false, misleading, or otherwise disallowed username. "..
									"Please choose a unique username and try again.",
	["^[0-9]+$"]				=	"All-numeric usernames are disallowed on this server. "..
									"Please choose a proper username and try again.",
	["[0-9].-[0-9].-[0-9]"]		=	"Too many numbers in your username. "..
									"Please try again with less than five digits in your username."
}

-- Original implementation (in Python) by sfan5
--[[
local function judge(msg)
	local numspeakable = 0
	local numnotspeakable = 0
	local cn = 0
	local lastc = '____'
	for c in msg:gmatch(".") do
		c = c:lower()
		if c:find("[aeiou0-9_-]") then
			if cn > 2 and not c:find("[0-9]") then
				numnotspeakable = numnotspeakable + 1
			elseif not c:find("[0-9]") then
				numspeakable = numspeakable + 1
			end
			cn = 0
		else
			if (cn == 1) and (lastc == c) and (lastc ~= 's') then
				numnotspeakable = numnotspeakable + 1
				cn = 0
			end
			if cn > 2 then
				numnotspeakable = numnotspeakable + 1
				cn = 0
			end
			if lastc:find("[aeiou]") then
				numspeakable = numspeakable + 1
				cn = 0
			end
			if not ((lastc:find("[aipfom]") and c == "r") or (lastc == "c" and c == "h")) then
				cn = cn + 1
			end
		end
		lastc = c
	end
	if cn > 0 then
		numnotspeakable = numnotspeakable + 1
	end
	return (numspeakable >= numnotspeakable)
end
--]]

minetest.register_on_prejoinplayer(function(name, ip)
	local lname = name:lower()
	for re, reason in pairs(disallowed) do
		if lname:find(re) then
			return reason
		end
	end

	if #name < 2 then
		return "Too short of a username. "..
				"Please pick a name with at least 4 characters and try again."
	end

	--[[
	if not judge(name) and #name > 5 then
		return "Your username just plain looks like gibberish. "..
				"Please pick something readable and try again."
	end
	--]]

end)

if minetest.setting_getbool("log_mods") then
	minetest.log("action", "Carbone: [no_bad_names] loaded.")
end
