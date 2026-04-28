if instance_exists(Player)
{
	if point_distance(x + 16, y + 16, Player.x, Player.y) < 64 && move == false
	{
		sound_play(sndElevatorOpen);
		move = true;
		image_speed = 0.2 fmt;
		alarm[0] = 10;
	}
}

tt1 = sprite_get_texture(sprite_index, image_index);

if Player.wintime > 120
{
	if close == false
		sound_play(sndElevatorClose);
	
	close = true;
	if image_index > 0
		image_index -= 0.2 fmt;
}
