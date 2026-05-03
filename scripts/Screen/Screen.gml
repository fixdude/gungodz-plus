enum SCREEN_ANCHOR
{
	TOP = 0x0001,
	BOTTOM = 0x0010,
	LEFT = 0x0100,
	RIGHT = 0x1000,
	
	HCENTER = 0x1100,
	VCENTER = 0x0011
}

function __getAnchorX(anchor, w = Screen.width, pad = 0)
{
	if anchor & SCREEN_ANCHOR.HCENTER
		return (w / 2);
	if anchor & SCREEN_ANCHOR.LEFT
		return pad;
	if anchor & SCREEN_ANCHOR.RIGHT
		return w - pad;
}

function __getAnchorY(anchor, h = Screen.height, pad = 0)
{
	if anchor & SCREEN_ANCHOR.VCENTER
		return (h / 2);
	if anchor & SCREEN_ANCHOR.TOP
		return pad;
	if anchor & SCREEN_ANCHOR.BOTTOM
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

function __internalScreen()
{
	static
		width = 0, height = 0,
		gui_width = 0, gui_height = 0,
		base_width = 0, base_height = 0,
		aspect_ratio = 1.6, size = 200,
		vsync = false, antialiasing = 0,
		resizing = false, dragging = false,
		display_orientation = display_get_orientation();
	
	static defaults = function(vs, swap_portrait = true)
	{
		with Screen
		{
			var wport = window_get_width(), hport = window_get_height();
			aspect_ratio = wport / hport;
			setVSync(vs);
			sync(false, swap_portrait);
			base_width = wport;
			base_height = hport;
			getOrientation();
		}
	}

	static sync = function(from_size = false, swap_portrait = true)
	{
		with Screen
		{
			antialiasing = display_aa;
			vsync &= SCREEN_VSYNC_IS_SUPPORTED;
			
			if from_size == false
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
			if swap_portrait == true
			&& (display_orientation == display_portrait || display_orientation == display_portrait_flipped)
			{
				// Bitwise XOR swap
				width = width ^ height;
				height = width ^ height;
				width = width ^ height;
			}
			
			return self;
		}
	}
	
	static apply = function(center = false, reset_gui = true)
	{
		if !window_get_fullscreen()
			window_restore();
			
		with Screen
		{
			camera_set_view_size(view_camera[0], width, height);
			view_set_wport(0, width);
			view_set_hport(0, height);
		
			__screen_trace("apply: Width: ", width, ", Height: ", height);
			surface_resize(application_surface, width, height);
		
			window_set_size(width, height);
			if center
				window_center();
			
			if reset_gui
				display_set_gui_maximise(Screen.width / base_width, Screen.height / base_height);

			return self;
		}
	}
	
	static setScreenSize = function(w, h)
	{
		Screen.aspect_ratio = max(w, h) / min(w, h);
		return Screen;
	}
	
	static setRatio = function(ratio)
	{
		if is_array(ratio)
			Screen.aspect_ratio = ratio[0] * (1 / ratio[1]);
		if is_numeric(ratio)
			Screen.aspect_ratio = ratio;
		return Screen;
	}
	
	static getOrientation = function()
	{
		if os_browser
			var s = browser_width < browser_height;
		else
			var s = display_get_orientation();
		Screen.display_orientation = s;
		return s;
	}
	
	static getRatio = function()
	{
		var s = Screen.aspect_ratio;
		while s != round(s)
			s *= 10;
		
		return [s, s / Screen.aspect_ratio];
	}
	
	static setAA = function(aa)
	{
		display_reset(aa, Screen.vsync);
		Screen.antialiasing = aa;
		return Screen;
	}
	
	static setVSync = function(vs)
	{
		if !SCREEN_VSYNC_IS_SUPPORTED && vs == true
		{
			__screen_trace("setVSync: WARNING: VSync is not supported on this device.");
		}
		
		display_reset(display_aa, vs);
		Screen.vsync = vs;
		return Screen;
	}
	
	static setDisplay = function(aa, vs)
	{
		display_reset(aa, vs);
		Screen.antialiasing = aa;
		Screen.vsync = vs;
		return Screen;
	}
}

__internalScreen();
global.__internalScreenStatic = static_get(__internalScreen);
__ScreenConfig();