with other
{
	if my_health < maxhp
	{
		my_health += other.add_hp;
		if my_health > maxhp
			my_health = maxhp;
	
		instance_destroy(other);
		sound_play(sndPickupHP);
	}
}