with (instance_create(x, y, BulletTrail))
{
	xstart = other.xstart;
	ystart = other.ystart;
	zstart = other.trailZ;
	z = other.trailZ;
}

instance_destroy();

if (enmhit == false)
{
	sound_play_3d(sndHitWall, x, y, z);
	
	with (instance_create(x, y, BulletHit))
		z = other.z + 8;
}
