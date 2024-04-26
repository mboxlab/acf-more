-- Weight
local Gear8LW = 1200
local StWB = 0.75 -- straight weight bonus mulitplier

-- Torque Rating
local Gear8LT = 20000
local StTB = 1.25 -- straight torque bonus multiplier

-- Straight-through gearboxes

ACF_DefineGearbox("24Gear-ST-S", {
	name = "24-Speed, Straight, Small",
	desc = "much wow, many yes",
	model = "models/engines/t5large.mdl",
	category = "Custom-24-Speed",
	weight = math.floor(Gear8LW * StWB),
	switch = 0.15,
	maxtq = math.floor(Gear8LT * StTB),
	gears = 25,
	geartable = {
		[0] = 0,
		[1] = 0.04,
		[2] = 0.08,
		[3] = 0.12,
		[4] = 0.16,
		[5] = 0.2,
		[6] = 0.24,
		[7] = 0.28,
		[8] = 0.32,
		[9] = 0.36,
		[10] = 0.4,
		[11] = 0.44,
		[12] = 0.48,
		[13] = 0.52,
		[14] = 0.56,
		[15] = 0.6,
		[16] = 0.64,
		[17] = 0.68,
		[18] = 0.72,
		[19] = 0.76,
		[20] = 0.80,
		[21] = 0.84,
		[22] = 0.88,
		[23] = 0.92,
		[24] = 0.96,
		[25] = -0.04,
		[-1] = 0.8,
	},
})
