
if ACF.Version then --fallback to old acf, its not set in acf3

	function ACF_DefineEngineold(id,data)
		ACF_DefineEngine(id,data)
	end

elseif ACF.Classes.Engines then --newer acf3 fix
	function ACF_DefineEngineold(id,data)
	end
else
local class = "zACFE X"
local typeoverwrite = nil
-- Flat 2 engines
	ACF.RegisterEngineClass(class, {
		Name = "ACFE X Engines",
	})

	do

		function ACF_DefineEngineold(id,data)
			local Fueltype = {}
			if data.fuel == "Petrol"	then Fueltype = { Petrol = true } end
			if data.fuel == "Diesel"	then Fueltype = { Diesel = true } end
			if data.fuel == "Multifuel" then Fueltype = { Petrol = true, Diesel = true } end
			if data.fuel == "Electric"	then Fueltype = { Electric = true } end
			ACF.RegisterEngine(id, class, {
				Name		 = data.name,
				Description	 = data.desc,
				Model		 = data.model,
				Sound		 = data.sound,
				Fuel		 = Fueltype,
				Type		 = typeoverwrite or data.enginetype,
				Mass		 = data.weight,
				Torque		 = data.torque,
				FlywheelMass = data.flywheelmass,
				RPM = {
					Idle	= data.idlerpm,
					PeakMin	= data.peakminrpm,
					PeakMax	= data.peakmaxrpm,
					Limit	= data.limitrpm,
				},
			})
		end
		
	end

	
end

ACF_DefineEngineold( "X24-9.6", {
	name = "X24 9.6L Petrol",
	desc = "[ACFE] A tiny, old worn-out X24 engine.",
	model = "models/engines/x24s.mdl",
	sound = "acf_engines/r7_petrolsmall.wav",
	category = "X",
	fuel = "Petrol",
	enginetype = "Radial",
	weight = 540,
	torque = 820,
	flywheelmass = 0.10,
	idlerpm = 710,
	peakminrpm = 2600,
	peakmaxrpm = 4500,
	limitrpm = 4900
} )

ACF_DefineEngineold( "X24-37.2", {
	name = "X24 37.2L Petrol",
	desc = "[ACFE] Mid range X24 engine, thirsty and smooth",
	model = "models/engines/x24m.mdl",
	sound = "acf_engines/r7_petrolmedium.wav",
	category = "X",
	fuel = "Petrol",
	enginetype = "Radial",
	weight = 1540,
	torque = 2310,
	flywheelmass = 0.45,
	idlerpm = 680,
	peakminrpm = 2200,
	peakmaxrpm = 3600,
	limitrpm = 3900
} )

ACF_DefineEngineold( "X24-85.8-X24", {
	name = "X24 85.8L Petrol",
	desc = "[ACFE] Massive X24 monster, perfect for a vibrator.",
	model = "models/engines/x24b.mdl",
	sound = "acf_engines/r7_petrollarge.wav",
	category = "X",
	fuel = "Petrol",
	enginetype = "Radial",
	weight = 4500,
	torque = 5700,
	flywheelmass = 2,
	idlerpm = 650,
	peakminrpm = 2100,
	peakmaxrpm = 3200,
	limitrpm = 3800
} )