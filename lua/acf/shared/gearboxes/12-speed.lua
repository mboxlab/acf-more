-- Weight
local Gear8SW = 250
local Gear8MW = 400
local Gear8LW = 600
local StWB = 0.75 -- straight weight bonus mulitplier

-- Torque Rating
local Gear8ST = 340
local Gear8MT = 1000
local Gear8LT = 10000
local StTB = 1.25 -- straight torque bonus multiplier

-- Straight-through gearboxes

ACF_DefineGearbox("12Gear-ST-S", {
	name = "12-Speed, Straight, Small",
	desc = "A small and light 12 speed straight-through gearbox.",
	model = "models/engines/t5small.mdl",
	category = "Custom-12-Speed",
	weight = math.floor(Gear8SW * StWB),
	switch = 0.15,
	maxtq = math.floor(Gear8ST * StTB),
	gears = 13,
	geartable = {
		[0] = 0,
		[1] = 0.08,
		[2] = 0.16,
		[3] = 0.24,
		[4] = 0.32,
		[5] = 0.4,
		[6] = 0.48,
		[7] = 0.56,
		[8] = 0.64,
		[9] = 0.72,
		[10] = 0.8,
		[11] = 0.88,
		[12] = 0.96,
		[13] = -0.1,
		[-1] = 0.5,
	},
})

ACF_DefineGearbox("12Gear-ST-M", {
	name = "12-Speed, Straight, Medium",
	desc = "A medium 12 speed straight-through gearbox.",
	model = "models/engines/t5med.mdl",
	category = "Custom-12-Speed",
	weight = math.floor(Gear8MW * StWB),
	switch = 0.2,
	maxtq = math.floor(Gear8MT * StTB),
	gears = 13,
	geartable = {
		[0] = 0,
		[1] = 0.08,
		[2] = 0.16,
		[3] = 0.24,
		[4] = 0.32,
		[5] = 0.4,
		[6] = 0.48,
		[7] = 0.56,
		[8] = 0.64,
		[9] = 0.72,
		[10] = 0.8,
		[11] = 0.88,
		[12] = 0.96,
		[13] = -0.1,
		[-1] = 0.5,
	},
})

ACF_DefineGearbox("12Gear-ST-L", {
	name = "12-Speed, Straight, Large",
	desc = "A large 12 speed straight-through gearbox.",
	model = "models/engines/t5large.mdl",
	category = "Custom-12-Speed",
	weight = math.floor(Gear8LW * StWB),
	switch = 0.3,
	maxtq = math.floor(Gear8LT * StTB),
	gears = 13,
	geartable = {
		[0] = 0,
		[1] = 0.08,
		[2] = 0.16,
		[3] = 0.24,
		[4] = 0.32,
		[5] = 0.4,
		[6] = 0.48,
		[7] = 0.56,
		[8] = 0.64,
		[9] = 0.72,
		[10] = 0.8,
		[11] = 0.88,
		[12] = 0.96,
		[13] = -0.1,
		[-1] = 0.5,
	},
})
