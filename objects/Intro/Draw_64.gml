shine_start();
draw_sprite(sprite_index, 0, x, y);
if shine_pos < shine_info[0]
	shine_pos = shine_end(shine_pos, 21, 15 * image_speed);
draw_self();
