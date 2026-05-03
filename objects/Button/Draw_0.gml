if shine
	shine_start(x, y);
draw_self();
if shine
	shine_pos = shine_end(shine_pos, 13, 8 * image_speed, false);

if text != noone
{
	draw_set_font(fntS);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_color(c_black);
	draw_text_ext(x + thoff, y + tvoff, text, 0, min(string_width(text), 52));
}