event_inherited();
if !variable_instance_exists(id, "unlocked")
	unlocked = false;
shine = unlocked;
fog = 000;
wld = 1;
lev = 1;

onPress = function()
{
	UberCont.lev = lev;
	UberCont.wld = wld;
	global.fog = fog;
	
	with UberCont
	{
		p_gun = Weapons.Pistol;
		p_ammo = [20, 0, 0, 0];
	}

	if wld == 2
		lev = "1r2";
		
	window_mouse_set(window_get_width() / 2, window_get_height() / 2);
	var roomName = $"lev{wld}_{lev}";
	if wld == 4 && lev == 3
		roomName = "lev5_1";
	
	var roomId = asset_get_index(roomName);
	if roomId != -1
	{
		tgroup(gameGroup).loadsync();
		tgroup.load(true, enemyGroup, tileTexGroup);
		
		tgroup.unload(menuGroup, logoGroup);
		
		var mus = asset_get_index("sndLEVEL" + string(wld));
		if room == lev5_1
			mus = sndBOSS2;
		
		if mus != -1
			scrMusic(mus);
		room_goto(roomId);
	}
}