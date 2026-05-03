surface = -1;
width = surface_get_width(application_surface);
height = surface_get_height(application_surface);
buffer = buffer_create(4 * width * height, buffer_fixed, 1);
buffer_get_surface(buffer, application_surface, 0);

kilper = min(100, round((StatCont.kil / StatCont.kilmax) * 100));
itmper = min(100, round((StatCont.itm / StatCont.itmmax) * 100));
tim1 = floor(StatCont.tim / 60);
tim2 = scrZero(round((StatCont.tim - (tim1 * 60)) * (5 / 3)));
with UberCont
	other.par = l_info[wld, lev].par_time;
	
exittime = 0;