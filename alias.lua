-- Register aliases
local doornames = {
	["door"] = "wooden_door",
	["door_jungle"] = "jungle_door",
	["door_spruce"] = "spruce_door",
	["door_dark_oak"] = "dark_oak_door",
	["door_birch"] = "birch_door",
	["door_acacia"] = "acacia_door",
	["door_iron"] = "iron_door",
}

for oldname, newname in pairs(doornames) do
	minetest.register_alias("doors:"..oldname, "mcl_glass_doors:"..newname)
	minetest.register_alias("doors:"..oldname.."_t_1", "mcl_glass_doors:"..newname.."_t_1")
	minetest.register_alias("doors:"..oldname.."_b_1", "mcl_glass_doors:"..newname.."_b_1")
	minetest.register_alias("doors:"..oldname.."_t_2", "mcl_glass_doors:"..newname.."_t_2")
	minetest.register_alias("doors:"..oldname.."_b_2", "mcl_glass_doors:"..newname.."_b_2")
end

