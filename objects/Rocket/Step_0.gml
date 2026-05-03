tt1 = sprite_get_texture(sprite_index, image_index);

if speed < 4
	speed += 0.1 fmt;
else if speed < 16
	speed += 1 fmt;

if speed > 3
{
	with instance_create(x, y, Smoke)
	{
		motion_add(random(360), 0.2);
		zspeed = random(0.2) - 0.1;
		friction = 0.01;
	}
}
