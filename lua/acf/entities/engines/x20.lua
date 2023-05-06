
local ACF     = ACF
local Engines = ACF.Classes.Engines

if not Engines.Register then
	Engines.Register = function(name,data) end
end
if not Engines.RegisterItem then
	Engines.RegisterItem  = function(name,cat,data) end
end

Engines.Register("X20", {
	Name = "X20 Engine",
})



local function ACF_DefineEngineold(name, data)
	local fuel = {Petrol = true}
	if data.fuel == "Petrol" then
		 fuel		 = { Petrol = true }
	elseif data.fuel == "Diesel" then
		fuel		 = { Diesel = true }
	elseif data.fuel == "Electric" then
		fuel		 = { Electric  = true }
	elseif data.fuel == "Multi" then
		fuel		 = { Petrol  = true, Diesel = true}
	end
	Engines.RegisterItem(name, data.category, {
		Name		 = data.name,
		Description	 = data.desc,
		Model		 = data.model,
		Sound		 = data.sound,
		Fuel		 = fuel,
		Type		 = data.enginetype,
		Mass		 = data.weight,
		Torque		 = data.torque,
		FlywheelMass = data.flywheelmass,
		RPM = {
			Idle	= data.idlerpm,
			Limit	= data.limitrpm,
		},
		Preview = {
			FOV = 80,
		},
	})
end



ACF_DefineEngineold( "X20-8.0", {
	name = "X20 8.0L Petrol",
	desc = "[ACFE] A tiny, old worn-out X20 engine.",
	model = "models/engines/x20s.mdl",
	sound = "acf_engines/r7_petrolsmall.wav",
	category = "X20",
	fuel = "Petrol",
	enginetype = "Radial",
	weight = 450,
	torque = 790,
	flywheelmass = 0.10,
	idlerpm = 710,
	peakminrpm = 2600,
	peakmaxrpm = 4500,
	limitrpm = 4900
} )

ACF_DefineEngineold( "X20-31.0", {
	name = "X20 31.0L Petrol",
	desc = "[ACFE] Mid range X20 engine, thirsty and smooth",
	model = "models/engines/x20m.mdl",
	sound = "acf_engines/r7_petrolmedium.wav",
	category = "X20",
	fuel = "Petrol",
	enginetype = "Radial",
	weight = 1330,
	torque = 1810,
	flywheelmass = 0.45,
	idlerpm = 680,
	peakminrpm = 2200,
	peakmaxrpm = 3600,
	limitrpm = 3900
} )

ACF_DefineEngineold( "X20-74.0", {
	name = "X20 74.0L Petrol",
	desc = "[ACFE] Massive X20 monster, perfect for a vibrator.",
	model = "models/engines/x20b.mdl",
	sound = "acf_engines/r7_petrollarge.wav",
	category = "X20",
	fuel = "Petrol",
	enginetype = "Radial",
	weight = 3800,
	torque = 5275,
	flywheelmass = 2,
	idlerpm = 650,
	peakminrpm = 2100,
	peakmaxrpm = 3200,
	limitrpm = 3800
} )