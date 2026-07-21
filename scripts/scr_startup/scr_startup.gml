global.dbSettings = noone; /// @is {db}

function scr_startup()
{
	global.dbSettings = db_debug_load("config.json") ?? db_create();
	InputPlayerSetMinThreshold(INPUT_THRESHOLD.BOTH, db_read(global.dbSettings, 0.25, "deadzone"));
	
	try
		InputBindingsImport(false, db_read(global.dbSettings, undefined, "kbm bindings"));
	catch (_error)
		InputBindingsReset(false);
	
	try
		InputBindingsImport(true, db_read(global.dbSettings, undefined, "gamepad bindings"));
	catch (_error)
		InputBindingsReset(true);
	
	GScreen.size = db_read(global.dbSettings, 540, "screen mult");
	GScreen.setRatio(db_read(global.dbSettings, 16 / 9, "screen ratio"));
	GScreen.setDisplay(db_read(global.dbSettings, 0, "antialiasing"), db_read(global.dbSettings, true, "vsync"));
	GScreen.sync().apply(true);
}
