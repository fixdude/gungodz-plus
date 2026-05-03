with instance_create(x, y, DeadHeli)
{
	size = other.size;
	z = other.z;
	sprite_index = other.sprdead;
	image_speed = 0.2;
	mask_index = other.mask_index;
}

event_inherited();
sound_stop(heli);
