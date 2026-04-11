globalvar current_time_scale;current_time_scale = 1;
#macro fmt *current_time_scale
#macro fdv /current_time_scale

function change_framerate(spd)
{
	game_set_speed(spd, gamespeed_fps);
	current_time_scale = 60 / spd;
}