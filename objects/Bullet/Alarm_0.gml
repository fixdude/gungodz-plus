if instance_exists(trail)
{
	trail.x = x;
	trail.y = y;
	trail.z = z;
}

instance_destroy();

if enmhit == false
{
	sound_play_3d(sndHitWall, x, y, z);
	
	with instance_create(x, y, BulletHit)
		z = other.z + 8;
}
