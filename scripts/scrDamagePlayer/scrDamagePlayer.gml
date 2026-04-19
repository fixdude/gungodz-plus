function scrDamagePlayer(dmg)
{
	if dead == false && win == false
	{
		scrShake(dmg / 5);
		
		if instance_exists(Boss1)
			dmg = round(dmg * 0.7);
		
		if false//other.object_index == EBullet || other.object_index == FireBall
		{
			hitx = other.xstart;
			hity = other.ystart;
		}
		else
		{
			hitx = other.x;
			hity = other.y;
		}
		
		my_health -= (dmg * BackCont.hard);
		red = (dmg / 15) + 0.2;
	}
}
