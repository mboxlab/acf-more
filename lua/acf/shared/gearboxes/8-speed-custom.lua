-- Weight
local Gear8SW = 100
local Gear8MW = 200
local Gear8LW = 400
local StWB = 0.75 -- straight weight bonus mulitplier

-- Torque Rating
local Gear8ST = 340
local Gear8MT = 1000
local Gear8LT = 10000
local StTB = 1.25 -- straight torque bonus multiplier

ACF_DefineGearbox("8Gear-ST-S2", {
	name = "8-Speed, Straight, Small",
	desc = "A small and light 8 speed straight-through gearbox.",
	model = "models/engines/t5small.mdl",
	category = "Custom-8-Speed",
	weight = math.floor(Gear8SW * StWB),
	switch = 0.15,
	maxtq = math.floor(Gear8ST * StTB),
	gears = 9,
	geartable = {[0] = 0, [1] = 0.1, [2] = 0.2, [3] = 0.3, [4] = 0.4, [5] = 0.5, [6] = 0.6, [7] = 0.7, [8] = 0.8, [9] = -0.1, [-1] = 0.5},
})

ACF_DefineGearbox("8Gear-ST-M2", {
	name = "8-Speed, Straight, Medium",
	desc = "A medium 8 speed straight-through gearbox.",
	model = "models/engines/t5med.mdl",
	category = "Custom-8-Speed",
	weight = math.floor(Gear8MW * StWB),
	switch = 0.2,
	maxtq = math.floor(Gear8MT * StTB),
	gears = 9,
	geartable = {[0] = 0, [1] = 0.1, [2] = 0.2, [3] = 0.3, [4] = 0.4, [5] = 0.5, [6] = 0.6, [7] = 0.7, [8] = 0.8, [9] = -0.1, [-1] = 0.5},
})

ACF_DefineGearbox("8Gear-ST-L2", {
	name = "8-Speed, Straight, Large",
	desc = "A large 8 speed straight-through gearbox.",
	model = "models/engines/t5large.mdl",
	category = "Custom-8-Speed",
	weight = math.floor(Gear8LW * StWB),
	switch = 0.3,
	maxtq = math.floor(Gear8LT * StTB),
	gears = 9,
	geartable = {[0] = 0, [1] = 0.1, [2] = 0.2, [3] = 0.3, [4] = 0.4, [5] = 0.5, [6] = 0.6, [7] = 0.7, [8] = 0.8, [9] = -0.1, [-1] = 0.5},
})
