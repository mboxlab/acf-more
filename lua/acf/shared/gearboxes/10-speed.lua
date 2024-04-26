-- Weight
local Gear8SW = 150
local Gear8MW = 300
local Gear8LW = 500
local StWB = 0.75 -- straight weight bonus mulitplier

-- Torque Rating
local Gear8ST = 340
local Gear8MT = 1000
local Gear8LT = 10000
local StTB = 1.25 -- straight torque bonus multiplier

-- Straight-through gearboxes

ACF_DefineGearbox("10Gear-ST-S", {
	name = "10-Speed, Straight, Small",
	desc = "A small and light 10 speed straight-through gearbox.",
	model = "models/engines/t5small.mdl",
	category = "Custom-10-Speed",
	weight = math.floor(Gear8SW * StWB),
	switch = 0.15,
	maxtq = math.floor(Gear8ST * StTB),
	gears = 11,
	geartable = {
		[0] = 0,
		[1] = 0.1,
		[2] = 0.19,
		[3] = 0.28,
		[4] = 0.37,
		[5] = 0.46,
		[6] = 0.55,
		[7] = 0.64,
		[8] = 0.73,
		[9] = 0.82,
		[10] = 0.91,
		[11] = -0.1,
		[-1] = 0.5,
	},
})

ACF_DefineGearbox("10Gear-ST-M", {
	name = "10-Speed, Straight, Medium",
	desc = "A medium 10 speed straight-through gearbox.",
	model = "models/engines/t5med.mdl",
	category = "Custom-10-Speed",
	weight = math.floor(Gear8MW * StWB),
	switch = 0.2,
	maxtq = math.floor(Gear8MT * StTB),
	gears = 11,
	geartable = {
		[0] = 0,
		[1] = 0.1,
		[2] = 0.19,
		[3] = 0.28,
		[4] = 0.37,
		[5] = 0.46,
		[6] = 0.55,
		[7] = 0.64,
		[8] = 0.73,
		[9] = 0.82,
		[10] = 0.91,
		[11] = -0.1,
		[-1] = 0.5,
	},
})

ACF_DefineGearbox("10Gear-ST-L", {
	name = "10-Speed, Straight, Large",
	desc = "A large 10 speed straight-through gearbox.",
	model = "models/engines/t5large.mdl",
	category = "Custom-10-Speed",
	weight = math.floor(Gear8LW * StWB),
	switch = 0.3,
	maxtq = math.floor(Gear8LT * StTB),
	gears = 11,
	geartable = {
		[0] = 0,
		[1] = 0.1,
		[2] = 0.19,
		[3] = 0.28,
		[4] = 0.37,
		[5] = 0.46,
		[6] = 0.55,
		[7] = 0.64,
		[8] = 0.73,
		[9] = 0.82,
		[10] = 0.91,
		[11] = -0.1,
		[-1] = 0.5,
	},
})
