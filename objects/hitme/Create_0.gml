event_inherited();

invincible = false;

if place_free(x + 16, y + 16)
{
	x += 16;
	y += 16;
}

spridle = sprite_index;
sprwalk = sprite_index;
sprdead = sprite_index;
sprfire = sprite_index;
sprhurt = sprite_index;
size = 32;
width = 8;
z = 0;
tt1 = sprite_get_texture(sprite_index, -1);
my_dsound = noone;
my_hsound = noone;
my_asound = noone;
count_death = false;
can_corpse = true;
my_health = 1;