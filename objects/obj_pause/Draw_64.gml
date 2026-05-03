var w = ceil(display_get_gui_width()), h = ceil(display_get_gui_height()) + 1;
d3d_set_projection_ortho(0, 0, 320, 200, 0);

if !surface_exists(surface)
{
	surface = surface_create(width, height);
	buffer_set_surface(buffer, surface, 0);
}

draw_surface_stretched_ext(surface, 0, 0, w, h, #999999, 1);
draw_set_color(c_white);
draw_set_alpha(1);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fntMenu);

if exittime > 0
	draw_set_color(make_color_hsv(0, lerp(0, 255, (exittime / 45)), 255));
draw_text(160, 40, $"HOLD {InputIconGet(INPUT_VERB.PAUSE)} TO QUIT");
draw_set_color(c_white);

draw_set_font(fntM);
draw_set_color(#E7CB7E);
draw_text(160, 70, "PAUSED");

draw_set_color(c_white);
draw_set_font(fntSM);
var _text = $"KILLS: {kilper}%";
_text += $"\nITEMS: {itmper}%";
_text += $"\nTIME: {tim1}:{tim2}";
_text += $" / {par}:00";
draw_text(w / 2, h - 88, _text);

draw_set_halign(fa_left);
draw_set_valign(fa_top);
