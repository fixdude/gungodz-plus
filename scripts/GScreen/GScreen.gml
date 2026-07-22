enum SCREEN_ANCHOR
{
	TOP = 0x0001,
	BOTTOM = 0x0010,
	LEFT = 0x0100,
	RIGHT = 0x1000,
	
	HCENTER = 0x1100,
	VCENTER = 0x0011
}

function __getAnchorX(anchor, w = width, pad = 0)
{
	if (anchor & SCREEN_ANCHOR.HCENTER)
		return (w / 2);
	if (anchor & SCREEN_ANCHOR.LEFT)
		return pad;
	if (anchor & SCREEN_ANCHOR.RIGHT)
		return w - pad;
}

function __getAnchorY(anchor, h = height, pad = 0)
{
	if (anchor & SCREEN_ANCHOR.VCENTER)
		return (h / 2);
	if (anchor & SCREEN_ANCHOR.TOP)
		return pad;
	if (anchor & SCREEN_ANCHOR.BOTTOM)
		return h - pad;
}

#macro SCREEN_VSYNC_IS_SUPPORTED (os_type == os_windows || os_type == os_linux || os_type == os_macosx)
#macro ___SCREEN_ENABLE_TRACE (GM_build_type == "run")

function __screen_trace()
{
	if ___SCREEN_ENABLE_TRACE && argument_count
	{
		var str = "";
		for (var i = 0; i < argument_count; i++)
			str += string(argument[i]);
		
		show_debug_message($"Screen -> {str}");
	}
}

#macro ___INTERNALSCREENMAIN global.__internalScreenStatic
/// @return {Struct.__internalScreen}
function __internalScreen() constructor
{
	width = 0; height = 0;
	gui_width = 0; gui_height = 0;
	base_width = 0; base_height = 0;
	aspect_ratio = 1.6; size = 200;
	vsync = false; antialiasing = 0;
	resizing = false; dragging = false;
	display_orientation = display_get_orientation();
	
	defaults = function(vs, swap_portrait = true)
	{
		var wport = window_get_width(), hport = window_get_height();
		aspect_ratio = wport / hport;
		setVSync(vs);
		sync(false, swap_portrait);
		base_width = wport;
		base_height = hport;
		getOrientation();
	}

	sync = function(from_size = false, swap_portrait = true)
	{
		antialiasing = display_aa;
		vsync &= SCREEN_VSYNC_IS_SUPPORTED;
		
		if (from_size == false)
		{
			width = min(aspect_ratio * size, display_get_width());
			height = min(size, display_get_height());
		}
		else
		{
			aspect_ratio = width / height;
			size = height;
		}
		
		display_orientation = getOrientation();
		
		// *OS will always handle flipping by itself
		if (swap_portrait == true
		&& (display_orientation == display_portrait || display_orientation == display_portrait_flipped))
		{
			// Bitwise XOR swap
			width = width ^ height;
			height = width ^ height;
			width = width ^ height;
		}
		
		return self;
	}
	
	apply = function(center = false, reset_gui = true)
	{
		if (!window_get_fullscreen())
			window_restore();

		camera_set_view_size(view_camera[0], width, height);
		view_set_wport(0, width);
		view_set_hport(0, height);
	
		__screen_trace("apply: Width: ", width, ", Height: ", height);
		surface_resize(application_surface, width, height);
	
		window_set_size(width, height);
		if (center)
			window_center();
		
		if (reset_gui)
			display_set_gui_maximise(width / base_width, height / base_height);

		return self;
	}
	
	setScreenSize = function(w, h)
	{
		aspect_ratio = max(w, h) / min(w, h);
		return self;
	}
	
	setRatio = function(ratio)
	{
		if (is_array(ratio))
			aspect_ratio = ratio[0] * (1 / ratio[1]);
		if (is_numeric(ratio))
			aspect_ratio = ratio;
		return self;
	}
	
	getOrientation = function()
	{
		var s;
		if (os_browser == true)
			s = browser_width < browser_height;
		else
			s = display_get_orientation();
		display_orientation = s;
		return s;
	}
	
	getRatio = function()
	{
		var s = aspect_ratio;
		while (s != round(s))
			s *= 10;
		
		return [s, s / aspect_ratio];
	}
	
	setAA = function(aa)
	{
		display_reset(aa, vsync);
		antialiasing = aa;
		return self;
	}
	
	setVSync = function(vs)
	{
		if (!SCREEN_VSYNC_IS_SUPPORTED)
		{
			__screen_trace("setVSync: WARNING: VSync is not supported on this device.");
			return self;
		}
		
		display_reset(display_aa, vs);
		vsync = vs;
		return self;
	}
	
	setDisplay = function(aa, vs)
	{
		if (!SCREEN_VSYNC_IS_SUPPORTED && vs == true)
			__screen_trace("setDisplay: WARNING: VSync is not supported on this device.");
		else
			vsync = vs;
		
		display_reset(aa, vs);
		antialiasing = aa;
		return self;
	}
	
	return self;
}

___INTERNALSCREENMAIN = new __internalScreen();
__GScreenConfig();