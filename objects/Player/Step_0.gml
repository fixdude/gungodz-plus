sound_emitter_pos(shootemt, x, y, z);
shootbus.effects[0].bypass = !UberCont.gold;

if (place_meeting(x, y, Pipe) || place_meeting(x, y, BarrelPipe))
	hdr -= (hdr - (global.fog * 0.6)) * 0.2;
else if (BackCont.night <= 0)
	hdr -= (hdr - global.fog) * 0.2;
else
	hdr -= (hdr - max(1, global.fog - (BackCont.night * 50))) * 0.2;

if (angle > 360)
	angle -= 360;
if (angle < 0)
	angle += 360;

walk += speed;

/*
if keyboard_check_pressed(vk_space)
	zspeed = 6;
if zspeed > -10
	zspeed -= 0.35;
*/
	
z += zspeed;
if (z < 16)
	z = 16;

var dir = InputDirection(undefined, INPUT_CLUSTER.NAVIGATION, playerIndex);
if (dir != undefined)
{
	var dist = InputDistance(INPUT_CLUSTER.NAVIGATION);
	direction = angle + (dir - 90);
	if (!place_meeting(x + lengthdir_x(1, direction), y + lengthdir_y(1, direction), wallParent))
		motion_addf(direction, walkspeed * dist);
}

if (friction < 0.5)
	friction += 0.01 fmt;
else
	friction = 0.5;
	
if (speed > 3)
	speed = 3;

if (red > 0)
{
	red -= 0.01 fmt;
	red *= 0.95;
}
else
	red = 0;

if (dead == false && UberCont.focus)
{
	var d, v = (5 * (UberCont.sensitivity / 100));
	
	d = InputX(INPUT_CLUSTER.LOOKING, playerIndex);
	angle -= d / v;
	if (window_mouse_get_locked())
	{
		d = window_mouse_get_delta_x();
		angle -= d / v;
	}
	d = InputY(INPUT_CLUSTER.LOOKING, playerIndex);
	angle_v -= d / v;
}

if (nextwep != Weapons.None && can_shoot == true)
{
	guny += 24;
	
	if (guny > 96)
	{
		wep = nextwep;
		gunanim = 0;
		nextwep = Weapons.None;
	}
}

if (nextwep == Weapons.None && guny > 0)
	guny -= 24;

if (dead == true)
{
	deadtime += 1 fmt;
	
	if (deadtime > 60 && (InputPressed(INPUT_VERB.SHOOT) || InputPressed(INPUT_VERB.MENU_ACCEPT)))
		room_restart();
}

if (win == true)
{
	var e = instance_nearest(x, y, Exit);
	if (instance_exists(e))
	{
		x -= (x - (e.x + 16)) * 0.1;
		y -= (y - (e.y + 16)) * 0.1;
	}
	
	wintime += 1 fmt;
	
	var press = (InputPressed(INPUT_VERB.SHOOT) || InputPressed(INPUT_VERB.MENU_ACCEPT));
	
	if (BackCont.finstage > 5
	&& press
	&& !(UberCont.wld == 4 && UberCont.lev == 3))
	{
		if (ammo[Weapons.Pistol] < 20)
			ammo[Weapons.Pistol] = 20;
		
		for (var i = 0; i < array_length(ammo); i++)
			UberCont.p_ammo[i] = ammo[i];
		
		if (wep == Weapons.Knife)
			UberCont.p_gun = knifewep;
		else
			UberCont.p_gun = wep;
		
		if (++UberCont.lev > 4)
		{
			UberCont.lev = 1;
			UberCont.wld++;
		}
		
		if (place_meeting(x, y, WorldExit) || instance_number(Exit) == 0)
			room_goto(menLevelSelect);
		else
		{
			var wld = UberCont.wld, lev = UberCont.lev;
			
			var roomName = $"lev{wld}_{lev}";
			if (wld == 4 && lev == 3)
				roomName = "lev5_1";
	
			var roomId = asset_get_index(roomName);
			if (roomId != -1)
			{
				var mus = asset_get_index("sndLEVEL" + string(wld));
				if (room == lev5_1)
					mus = sndBOSS2;
		
				if (MusCont.currentMusic != mus && mus != -1)
					scrMusic(mus);
				room_goto(roomId);
			}
		}
	}
	else if (wintime > 30 && press)
		BackCont.finstage = 6;
}

if (dead == false && win == false)
{
	if (InputReleased(INPUT_VERB.NEXT_WEAPON) || wep == Weapons.None)
	{
		// I shouldn't be calling this but there is no other way to get that actual scroll
		var val = mouse_wheel_down() ? -1 : 1;
		if (wep != Weapons.Knife)
		{
			if (guny == 0)
			{
				dir = 0;
				nextwep = wep;
			
				do
				{
					if (val == 1 && nextwep < Weapons.Knife || val == -1 && nextwep > Weapons.Pistol)
						nextwep += val;
					else
						nextwep = 1;
				
					dir++;
				}
				until (ammo[nextwep] > 0 || dir > Weapons.Knife);
			}
		
			if (nextwep == wep || ammo[nextwep] == 0)
				nextwep = 0;
		}
		if (wep == Weapons.None)
			wep = Weapons.Pistol;
	}
	
	var weapon = weapons[wep];
	if (wep != Weapons.None)
	{
		if (gunanim > 0)
			gunanim -= weapon.image_speed;
		else
		{
			gunanim = 0;
		
			if (wep == Weapons.Knife)
			{
				wep = knifewep;
				if (wep == Weapons.Knife)
					wep = Weapons.None;
			}
		}
	}
	
	if (InputPressed(INPUT_VERB.SHOOT))
		scrFire(weapon, WepPressType.Press);
		
	if (InputCheck(INPUT_VERB.SHOOT))
	{
		if (nextwep != Weapons.None)
		{
			wep = nextwep;
			gunanim = 0;
			nextwep = 0;
		}
		
		scrFire(weapon, WepPressType.Hold);
	}
	
	if (InputReleased(INPUT_VERB.SHOOT))
		scrFire(weapon, WepPressType.Release);
		
	if (InputBufferPressed(INPUT_VERB.MELEE, 20))
	{
		if (wep != Weapons.Knife && can_shoot == true)
		{
			knifewep = wep;
			if (knifewep == Weapons.Knife)
				knifewep = Weapons.None;

			wep = Weapons.Knife;
			scrFire(weapons[wep], WepPressType.Press);
		}
	}
}