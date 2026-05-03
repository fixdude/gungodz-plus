if x < 96 || y < 96 || x > room_width - 96 || y > room_height - 96
	instance_destroy();

instance_create(x, y, ShockWave);
