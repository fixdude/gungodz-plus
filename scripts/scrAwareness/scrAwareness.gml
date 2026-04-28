function scrAwareness()
{
	scrTarget();
	var los = scrLOS();
	
	if target != noone
	{
		if active == false && distance_to_object(target) < 640
			active = los;
		
		if active == true
		{
			if aware < awaremax
				aware += los fmt;
			
			if aware >= awaremax
			{
				if angry == false
					sound_play(my_asound);
				
				angry = true;
			}
			
			if los == false && angry == false && aware > 0
				aware -= 1 fmt;
		}
	}
	
	if target == noone
	{
		angry = false;
		aware = false;
	}
}
