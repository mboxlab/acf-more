
-- ACF Extra reworked by ClockEFFX
-- https://steamcommunity.com/id/ClockEFFX/

-- Original addon by gamerpaddy
-- https://steamcommunity.com/id/gamerpaddy/

if ( ACF ) then
	
	ACFE = ACFE or {}
	
	if ( SERVER ) then
		
		include( "acfe/sv_thrust.lua" )
		

	end
	
else -- if not ACF
	
	print( "[ACF-Extra] ACF Base addon not found! ACF Extra will not be loaded.")
	
end