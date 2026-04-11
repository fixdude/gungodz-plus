var s = 0.1 fmt

if grow == 1
{
	image_alpha += s;
	
	if image_alpha > 1.2
		image_speed = s * 2;
}

if grow == 2
{
	image_alpha -= s;
	
	if image_alpha < 0
	{
		instance_create(x, y, Intro);
		instance_destroy();
	}
}
