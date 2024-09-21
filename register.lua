
local door = {   -- , Description , Image
	{"Blue",          "blue"},
	{"Black",         "black"},
	{"Brown",         "brown"},
	{"Cyan",          "cyan"},
	{"Green",         "green"},
	{"Grey",          "grey"},
	{"Light_blue",    "light_blue"},
	{"Lime",          "lime"},
	{"Magenta",       "magenta"},
	{"Orange",        "orange"},
	{"Pink",          "pink"},
	{"Purple",        "purple"},
	{"Red",           "red"},
	{"Silver",        "silver"},
	{"White",         "white"},
	{"Yellow",        "yellow"},
}

for i in ipairs(door) do
	local desc = door[i][1]
	local img = door[i][2]

mcl_glass_doors:register_door("mcl_glass_doors:"..img, {
	description = desc.. "Glass Door",
	inventory_image = "mcl_glass_doors_"..img.."_inv.png",
	groups = {handy=1,axey=1, material_glass=1},
    use_texture_alpha = true,
    sunlight_propagates = true,
    drawtype = "glasslike",
    paramtype = "light",
    stack_max = 64,
	tiles_bottom = {"mcl_glass_doors_"..img.."_lower.png", "mcl_glass_doors_side_lower.png"},
	tiles_top = {"mcl_glass_doors_"..img.."_upper.png", "mcl_glass_doors_side_upper.png"},
	sounds = mcl_sounds.node_sound_glass_defaults(),
	_mcl_blast_resistance = 0.3,
	_mcl_hardness = 0.3,
})

minetest.register_craft({
	output = "mcl_glass_doors:"..img.." 2",
	recipe = {
		{"mcl_core:glass_"..img, "mcl_core:glass_"..img},
		{"mcl_core:glass_"..img, "mcl_core:glass_"..img},
		{"mcl_core:glass_"..img, "mcl_core:glass_"..img}
	}
})
end

mcl_glass_doors:register_door("mcl_glass_doors:clear", {
	description = "Clear Glass Door",
	inventory_image = "mcl_glass_doors_clear_inv.png",
	groups = {handy=1,axey=1, material_glass=1},
    sunlight_propagates = true,
    use_texture_alpha = true,
    drawtype = "glasslike",
    paramtype = "light",
	tiles_bottom = {"mcl_glass_doors_clear_lower.png", "mcl_glass_doors_side_lower.png"},
	tiles_top = {"mcl_glass_doors_clear_upper.png", "mcl_glass_doors_side_upper.png"},
	sounds = mcl_sounds.node_sound_glass_defaults(),
	_mcl_blast_resistance = 0.3,
	_mcl_hardness = 0.3,
})

minetest.register_craft({
	output = "mcl_glass_doors:clear 2",
	recipe = {
		{"mcl_core:glass", "mcl_core:glass"},
		{"mcl_core:glass", "mcl_core:glass"},
		{"mcl_core:glass", "mcl_core:glass"}
	}
})
