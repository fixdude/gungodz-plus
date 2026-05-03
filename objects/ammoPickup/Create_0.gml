size = 16;
z = 0;
x += 16;
y += 16;

tt1 = sprite_get_texture(sprite_index, string_char_at(string(room_get_name(room)), 4) == "2");
event_inherited();
