if angry == true
	alarm[2] = (10 + random(10)) fmt;
else
	alarm[2] = (10 + random(20)) fmt;

scrTarget();

if active == true
{
	motion_add(random(360), 1);
	
	if scrLOS() == true && angry == true && random(2) < 1
	{
		if point_distance(x, y, target.x, target.y) < 40 + random(40)
			motion_add(point_direction(target.x, target.y, x, y), 2);
		
		if point_distance(x, y, target.x, target.y) > 60 + random(40)
			motion_add(point_direction(x, y, target.x, target.y), 2);
	}
	
	walk = 30 + random(20);
}
