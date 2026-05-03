z = -2;
enmhit = false;
alarm[0] = 1;
trail = instance_create(x, y, BulletTrail);
with trail
{
	z = other.z;
	zstart = z;
}