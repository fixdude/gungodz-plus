var w = Screen.width, h = Screen.height;

draw_set_alpha(alpha);
alpha += 0.01;
draw_set_color(c_black);
draw_rectangle(0, 0, w, h, false);

draw_set_alpha(1);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_font(fntMenu);

draw_set_color(c_white);
draw_text(w / 2, myy, text1);

draw_set_color(c_yellow);
draw_text(w / 2, myy, text2);

if myy > 5
	myy -= 0.1;

if InputPressed(UnknownEnum.Value_11)
	room_goto(menLevelSelect);
