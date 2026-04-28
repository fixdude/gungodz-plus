function scrTarget(obj = Player)
{
	if instance_exists(obj)
		target = instance_nearest(x, y, obj);
	else
	{
		angry = false;
		target = noone;
	}
	
	if target.dead == true || target.win == true
	{
		angry = false;
		target = noone;
	}
}
