function scrDamageEnemy(enm, dmg, knk, stab = false, zoff = undefined)
{
	if !enm.invincible
	&& !(enm.object_index == Boss1 && (enm.sprite_index != texBoss1Weak && enm.sprite_index != texBoss1WeakHit))
	&& !(enm.object_index == GodExecute && enm.image_speed > 0)
	{
		with (enm)
		{
			if !is_undefined(my_hsound) && my_hsound != noone
				sound_play(my_hsound);
		
			if alarm[0] > 1
				alarm[0] += 2 fmt;
		
			if (object_index == God && stab)
				my_health -= 200;
		
			my_health -= dmg;
			image_index = 0;
			sprite_index = sprhurt;
			active = true;
		
			motion_add(other.image_angle, knk * kick);
		}
	
		if zoff != undefined
		{
			var b = object_is_ancestor(enm.object_index, enemy) ? BulletHitEnemy : BulletHit;
			with instance_create(other.x, other.y, b)
				z = zoff;
		}
			
		enmhit = true;
		return true;
	}
	return false;
}