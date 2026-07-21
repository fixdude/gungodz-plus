d3d_clear_cache();
d3d_start();
	
draw_set_color(c_white);
d3d_set_fog(true, c_black, -10, 480);
init = false;
scrLevels();
finstage = 0;
alarm[0] = 1;
hard = true;
gold = UberCont.gold;
evil = false;
oldskool = false;
night = -0.2;
stars = 0;
tim = 0;
alarm[1] = 60 fmt;
fovwave = 0;
credithudx = 0;
shake = 0;
xshake = 0;
yshake = 0;
zshake = 0;
angle = 0;
oldskool = false;
ttD = noone;

sky_surf1 = noone;
sky_surf2 = noone;