function scrWin()
{
	BackCont.finstage = false;
	
	var wld = UberCont.wld, lev = UberCont.lev;
	
	if (lev == 3 || lev == 4)
	{
		if (wld != 4)
			scrMusic(sndELEVATOR);
	}
	
	var kll = round((StatCont.kil / StatCont.kilmax) * 100);
	var itm = round((StatCont.itm / StatCont.itmmax) * 100);
	var tim = StatCont.tim;
	var str = 
		+ (kll >= 100)
		+ (itm >= 100)
		+ (tim <= (UberCont.l_info[wld, lev].par_time * 60))
		+ (Player.starz);
		
	with (UberCont)
	{
		if (kills[wld, lev] == 0
		|| kills[wld, lev] < kll)
			kills[wld, lev] = clamp(kll, 0, 100);
	
		if (items[wld, lev] == 0
		|| items[wld, lev] < itm)
			items[wld, lev] = clamp(itm, 0, 100);
	
		if (times[wld, lev] == 0
		|| times[wld, lev] > tim)
			times[wld, lev] = tim;
		
		if (str > stars[wld, lev])
			stars[wld, lev] = str;
			
		beats[wld, lev]++;
	}

	if (lev == 3)
		UberCont.unlok[wld + 1, 1] = 1;
	else
		UberCont.unlok[wld, lev + 1] = 1;
	
	scrSave();
}