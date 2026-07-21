function scrDrawVictory()
{
	var w = ceil(display_get_gui_width()), h = ceil(display_get_gui_height()) + 1;
	var m = w / 2;
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(fntSM);
	draw_set_color(c_black);
	draw_set_alpha(0.4);
	
	draw_rectangle(0, 0, 320, 200, false);
	draw_set_alpha(1);
	draw_set_color(c_white);
	
	var wld = UberCont.wld, lev = UberCont.lev;
	ubtim = UberCont.times[wld, lev];
	finstage += 0.05 fmt;
	
	var txt = "";
	if (finstage > 1)
		txt = ("\nKILLS: " + string(min(100, round((StatCont.kil / StatCont.kilmax) * 100))) + "%");
	if (finstage > 2)
		txt += ("\nITEMS: " + string(min(100, round((StatCont.itm / StatCont.itmmax) * 100))) + "%");
	if (finstage > 3)
	{
		txt += ("\nTIME: " + string(floor(StatCont.tim / 60)) + ":"
		+ scrZero(round((StatCont.tim - (floor(StatCont.tim / 60) * 60)) * (5 / 3))));
		txt += (" / " + string(UberCont.l_info[wld, lev].par_time) + ":00");
	}
	
	draw_text(m, (h - 135) - credithudx, txt);
	
	for (var dir = 0; dir < Player.stars; dir++)
	{
		if (finstage > 4)
			draw_sprite(sprStarWhite, 0, (m + (dir * 24) - (Player.stars * 12)) + 8, (h - 130) - credithudx + string_height(txt) / 2);
	}
	
	draw_set_font(fntM);
}
