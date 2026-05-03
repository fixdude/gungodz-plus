function levelInfo(name, parTime) constructor
{
	self.name = name;
	self.par_time = parTime;
}

function scrLevels()
{
	// Worlds/Levels are indexed from 1 instead of 0 in the original
	var noLevel = new levelInfo("AGH!", 00);
	
	l_info = [
		[000],
		// WORLD 1
		[
			320,
			new levelInfo("VENUS#SUPERMAX", 40),
			new levelInfo("DETENTION#CENTRE", 50),
			new levelInfo("GUARD#QUARTERS", 70),
			new levelInfo("???", 35)
		],
		
		// WORLD 2
		[
			320,
			new levelInfo("SEWER#ENTRANCE", 50),
			new levelInfo("WASTEWATER", 70),
			new levelInfo("PUMPING#STATION", 40),
			new levelInfo("???", 70)
		],
		
		// WORLD 3
		[
			240,
			new levelInfo("BASEMENT", 45),
			new levelInfo("FACILITY", 85),
			new levelInfo("WINE#HEAVEN", 105),
			new levelInfo("???", 50)
		],
		
		// WORLD 4
		[
			480,
			new levelInfo("HALLWAY", 80),
			new levelInfo("LOBBY", 85),
			new levelInfo("ROOFTOP", 40),
			new levelInfo("???", 35)
		],
	];
}