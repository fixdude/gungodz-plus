function scrStartPlanes()
{
	FORCEINLINE;
	scrProgPlanes();
}

function scrExitPlanes()
{
	FORCEINLINE;
	scrProgPlanes(false);
}

function scrProgPlanes(start = true)
{
	FORCEINLINE;
	if !start || !instance_exists(LEVEL5)
	{
		with start ? Start : Exit
		{
			tt1 = sprite_get_texture(tilExitDoor, 0);
			
			if UberCont.wld == 2
				tt2 = sprite_get_texture(tilWall2_1, 1);
			else
				tt2 = sprite_get_texture(sprWall4_1, 1);
			
			var doorH = start ? StartDoorH : ExitDoorH;
			var doorV = start ? StartDoorV : ExitDoorV;
			var l5 = start && instance_exists(LEVEL5)
			
			if place_free(x, y - 1) && place_meeting(x, y - 1, Tile)
			{
				with instance_create(x, y, doorH)
				{
					x1 = round(x);
					y1 = round(y);
					x2 = round(x + 32);
					y2 = round(y);
					tt1 = other.tt1;
					tt2 = other.tt2;
					h = 2;
					
					if l5
						h = 1;
				}
			}
			
			if place_free(x, y + 1) && place_meeting(x, y + 1, Tile)
			{
				with instance_create(x, y, doorH)
				{
					x1 = round(x);
					y1 = round(y + 32);
					x2 = round(x + 32);
					y2 = round(y + 32);
					tt1 = other.tt1;
					tt2 = other.tt2;
					h = 2;
					
					if l5
						h = 1;
				}
			}
			
			if place_free(x - 1, y) && place_meeting(x - 1, y, Tile)
			{
				with instance_create(x, y, doorV)
				{
					x1 = round(x);
					y1 = round(y);
					x2 = round(x);
					y2 = round(y + 32);
					tt1 = other.tt1;
					tt2 = other.tt2;
					h = 2;
					
					if l5
						h = 1;
				}
			}
			
			if place_free(x + 1, y) && place_meeting(x + 1, y, Tile)
			{
				with instance_create(x, y, doorV)
				{
					x1 = round(x + 32);
					y1 = round(y);
					x2 = round(x + 32);
					y2 = round(y + 32);
					tt1 = other.tt1;
					tt2 = other.tt2;
					h = 2;
					
					if l5
						h = 1;
				}
			}
		}
	}
}
