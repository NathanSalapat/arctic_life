mobs:register_mob("arctic_life:penguin", {
	type = "animal",
	passive = false,
	attack_type = "dogfight",
   group_attack = true,
   reach = 1,
	damage = 1,
	hp_min = 5,
	hp_max = 15,
	armor = 200,
   fly_in = "default:water_source",
	collisionbox = {-0.25, -0.4, -0.25, 0.25, 0.3, 0.25},
	visual = "mesh",
	mesh = "arctic_life_penguin.b3d",
	drawtype = "front",
	textures = {
		{"arctic_life_penguin.png"},
		{"arctic_life_penguin_tux.png"},
	},
	blood_texture = "mobs_blood.png",
	visual_size = {x=8,y=8},
	makes_footstep_sound = true,
	sounds = {
		random = "penguin_chirrup",
	},
	-- speed and jump
	walk_velocity = 1,
	run_velocity = 2,
	jump = true,
	jump_height = 1,
	stepheight = 1.1,
	floats = 0,
	-- drops raw meat when dead
	drops = {
		{name = "mobs:meat_raw",
		chance = 1, min = 1, max = 4},
	},
	-- damaged by
	water_damage = 0,
	lava_damage = 5,
	light_damage = 0,
	-- model animation
	animation = {
		speed_normal = 15,	speed_run = 15,
		stand_start = 0,		stand_end = 60, -- head down/up
		walk_start = 150,		walk_end = 170, -- walk
		run_start = 150,		run_end = 170, -- walk
		punch_start = 70,		punch_end = 140, -- attack
      fly_start = 171,     fly_end = 201, -- swimming
	},
	follow = "farming:wheat", view_range = 7,
	replace_rate = 50,
	replace_what = {"group:flora"},
	replace_with = "air",
})

mobs:register_spawn("arctic_life:penguin", {"default:dirt_with_snow", "default:snowblock"}, 20, 0, 20000, 1, 31000)
mobs:register_egg("arctic_life:penguin", "Penguin", "default_grass.png", 1)
