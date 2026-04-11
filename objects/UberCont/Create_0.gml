// Player variables
p_health = 100;
p_gun = 1;
p_ammo[1] = 20;
p_ammo[2] = 0;
p_ammo[3] = 0;
p_ammo[4] = 0;
tim = 0;
totalkills = 0;
totalstars = 0;
global.scrn_num = 0;
scrLevels();
lev = 1;
wld = 1;
sensitivity = 100;

repeat NUM_WORLDS
{
	repeat NUM_LEVELS
	{
		plays[wld, lev] = 0;
		beats[wld, lev] = 0;
		kills[wld, lev] = 0;
		items[wld, lev] = 0;
		times[wld, lev] = 0;
		stars[wld, lev] = 0;
		unlok[wld, lev] = 0;
		lev++;
	}
	
	wld++;
	lev = 1;
}

unlok[1, 1] = 1;
gotgold = false;
gold = false;
hard = false;
musicon = 1;
