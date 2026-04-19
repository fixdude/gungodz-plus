function scrPipePlanes()
{
	with Pipe
	{
		tt1 = sprite_get_texture(sprPipeEntrance, 0);
		uvs1 = sprite_get_uvs(sprPipeEntrance, 0);
		tt2 = sprite_get_texture(tilWall2_1, 1);
		uvs2 = sprite_get_uvs(tilWall2_1, 1);
		
		if place_free(x, y - 1) && place_meeting(x, y - 1, Tile) && !place_meeting(x, y - 1, Pipe)
		{
			with instance_create(x, y, WallPlaneH)
			{
				x1 = round(x);
				y1 = round(y);
				x2 = round(x + 32);
				y2 = round(y);
				tt1 = other.tt1;
				uvs1 = other.uvs1;
				tt2 = other.tt2;
				uvs2 = other.uvs2;
				h = 2;
			}
		}
		
		if place_free(x, y + 1) && place_meeting(x, y + 1, Tile) && !place_meeting(x, y + 1, Pipe)
		{
			with instance_create(x, y, WallPlaneH)
			{
				x1 = round(x);
				y1 = round(y + 32);
				x2 = round(x + 32);
				y2 = round(y + 32);
				tt1 = other.tt1;
				uvs1 = other.uvs1;
				tt2 = other.tt2;
				uvs2 = other.uvs2;
				h = 2;
			}
		}
		
		if place_free(x - 1, y) && place_meeting(x - 1, y, Tile) && !place_meeting(x - 1, y, Pipe)
		{
			with instance_create(x, y, WallPlaneV)
			{
				x1 = round(x);
				y1 = round(y);
				x2 = round(x);
				y2 = round(y + 32);
				tt1 = other.tt1;
				uvs1 = other.uvs1;
				tt2 = other.tt2;
				uvs2 = other.uvs2;
				h = 2;
			}
		}
		
		if place_free(x + 1, y) && place_meeting(x + 1, y, Tile) && !place_meeting(x + 1, y, Pipe)
		{
			with instance_create(x, y, WallPlaneV)
			{
				x1 = round(x + 32);
				y1 = round(y);
				x2 = round(x + 32);
				y2 = round(y + 32);
				tt1 = other.tt1;
				uvs1 = other.uvs1;
				tt2 = other.tt2;
				uvs2 = other.uvs2;
				h = 2;
			}
		}
	}
	
	with BarrelPipe
	{
		tt1 = sprite_get_texture(sprBarrelEntrance, 0);
		uvs1 = sprite_get_uvs(sprBarrelEntrance, 0);
		
		if place_free(x, y - 1) && place_meeting(x, y - 1, Tile) && !place_meeting(x, y - 1, BarrelPipe)
		{
			with instance_create(x, y, WallPlaneH)
			{
				x1 = round(x);
				y1 = round(y);
				x2 = round(x + 32);
				y2 = round(y);
				tt1 = other.tt1;
				uvs1 = other.uvs1;
				h = 1;
			}
		}
		
		if place_free(x, y + 1) && place_meeting(x, y + 1, Tile) && !place_meeting(x, y + 1, BarrelPipe)
		{
			with instance_create(x, y, WallPlaneH)
			{
				x1 = round(x);
				y1 = round(y + 32);
				x2 = round(x + 32);
				y2 = round(y + 32);
				tt1 = other.tt1;
				uvs1 = other.uvs1;
				h = 1;
			}
		}
		
		if place_free(x - 1, y) && place_meeting(x - 1, y, Tile) && !place_meeting(x - 1, y, BarrelPipe)
		{
			with instance_create(x, y, WallPlaneV)
			{
				x1 = round(x);
				y1 = round(y);
				x2 = round(x);
				y2 = round(y + 32);
				tt1 = other.tt1;
				uvs1 = other.uvs1;
				h = 1;
			}
		}
		
		if place_free(x + 1, y) && place_meeting(x + 1, y, Tile) && !place_meeting(x + 1, y, BarrelPipe)
		{
			with instance_create(x, y, WallPlaneV)
			{
				x1 = round(x + 32);
				y1 = round(y);
				x2 = round(x + 32);
				y2 = round(y + 32);
				tt1 = other.tt1;
				uvs1 = other.uvs1;
				h = 1;
			}
		}
	}
}
