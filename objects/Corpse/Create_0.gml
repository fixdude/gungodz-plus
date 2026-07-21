event_inherited();
tt1 = sprite_get_texture(sprite_index, image_index);

float = 0;
z = 0;

if (string_char_at(room_get_name(room), 4) == "2")
{
	float = 0.01;
	z = 2 + sin(float);
}
