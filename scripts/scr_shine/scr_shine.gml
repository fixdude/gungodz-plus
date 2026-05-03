global._shineinfo = [0, 0, 0, 0];

function shine_set_info(spr, x = undefined, y = undefined)
{
	var info = global._shineinfo;
	info[0] = sprite_get_width(spr);
	info[1] = sprite_get_height(spr);
	if x != undefined
		info[2] = x;
	if y != undefined
		info[3] = y;
	return info;
}

function shine_start(x = undefined, y = undefined)
{
	var info = global._shineinfo;
	if x != undefined
		info[2] = x;
	if y != undefined
		info[3] = y;
	gpu_set_stencil_enable(true);
	gpu_set_stencil_func(cmpfunc_notequal);
	gpu_set_stencil_pass(stencilop_replace);
	
	gpu_set_alphatestenable(true);
}

function shine_end(pos, width = 8, spd = 1, once = true, col = c_white, dir = -45)
{
	gpu_set_alphatestenable(global.d3d);
	gpu_set_stencil_ref(1);
	draw_clear_stencil(0);
	
	if pos < 0
		return gpu_set_stencil_enable(false);
		
	var info = global._shineinfo,  len = max(info[0], info[1]);
	
	gpu_set_stencil_ref(0);
	
	var d = draw_get_color();
	draw_set_color(col);
	
	var xx = lengthdir_x(len, dir), yy = lengthdir_y(len, dir);
	draw_line_width(info[2] + pos - info[0], info[3], info[2] + pos + xx, info[3] + yy, width);
	
	draw_set_color(d);
	
	gpu_set_stencil_enable(false);
	
	while pos >= xx
	{
		if once
			return -1;
		pos -= info[0];
	}
	return pos + (spd fmt);
}
