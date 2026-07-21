event_inherited();
size = 16;
z = 0;
var s = mask_index == -1 ? mskPickup : mask_index;
x += sprite_get_width(s);
y += sprite_get_height(s);
image_index = string_char_at(room_get_name(room), 4) == "2";
glow = true;
