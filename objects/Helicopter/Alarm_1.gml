if up == true
{
	alarm[1] = (100 + (my_health / 4)) fmt;
	alarm[4] = 10 fmt;
	
	if mode == 0
		sound_play_3d(sndMinigunEnd, x, y, z);
	
	fire = 0;
	up = 0;
}
else
{
	sound_volume(sound_play_3d(choose(sndBossGreet1, sndBossGreet2, sndBossGreet3), x, y, z), distance_to_object(Player) / 160);
	alarm[1] = 350 fmt;
	up = true;
	
	mode = !mode;
	alarm[2] = 60 fmt;
	myangle = random(360);
	myturn = choose(1, -1);
}
