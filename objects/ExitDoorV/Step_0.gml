if instance_exists(Player)
{
	if point_distance(x + 16, y + 16, Player.x, Player.y) < 64 && move == false
	{
		sound_play(sndElevatorOpen);
		sound_play(sndDoor);
		move = true;
		image_speed = 0.4 fmt;
		alarm[0] = 10;
	}
}

var ir = floor(image_index);
if ind != ir
{
	ind = ir;
	tt1 = sprite_get_texture(sprite_index, ind);
	uvs1 = sprite_get_uvs(sprite_index, ind);
}

if Player.wintime > 120
{
	if close == false
		sound_play(sndElevatorClose);
	
	close = true;
	if image_index > 0
		image_index -= 0.4 fmt;
}
