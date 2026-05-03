size = 32;
z = 0;
x += 16;
y += 16;

var ind = string_char_at(string(room_get_name(room)), 4) == "2";
ind += (UberCont.gold * 2);
tt1 = sprite_get_texture(sprite_index, ind);

index = Weapons.None;
add_ammo = 0;
achiev = undefined;

event_inherited();
