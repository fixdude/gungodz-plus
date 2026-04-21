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

function __screen_trace(str)
{
	if ___SCREEN_ENABLE_TRACE
		show_debug_message($"Screen -> {debug_get_callstack(1)[1]}: {str}");
}

function __internalScreen()
{
	static
		width = 0, height = 0,
		aspect_ratio = 1.6, size = 200,
		vsync = false, antialiasing = 0,
		resizing = false, dragging = false,
		display_orientation = false;
	
	static _internal = {
		draw_icon: false,
		xoff: 0,
		yoff: 0
	}
	
	static defaults = function(vs, swap_portrait = true)
	{
		with Screen
		{
			aspect_ratio = view_wport[0] / view_hport[0];
			setVSync(vs);
			sync(false, swap_portrait);
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
	
	static apply = function()
	{
		if !window_get_fullscreen()
			window_restore();
			
		with Screen._internal
		{
			if sprite_exists(Screen.captionConfig.icon.sprite_index)
				draw_icon = true;
		}
		
		camera_set_view_size(view_camera[0], Screen.width, Screen.height);
		view_wport[0] = Screen.width;
		view_hport[0] = Screen.height;
		surface_resize(application_surface, view_wport[0], view_hport[0]);
		
		window_set_size(Screen.width, Screen.height);
		return Screen;
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
			return browser_width < browser_height;
		else
			return display_get_orientation();
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
			__screen_trace("WARNING: VSync is not supported on this device.");
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
	
	// -1 is only when focused in permitted options
	static captionConfig = {
		color: c_white,
		borderWidth : 2, // px
		borderHeight: 2,
		captionHeight: 64,
		//captionAnchor: SCREEN_ANCHOR.TOP, // Hellll no
		font: 0,
		text_align: [fa_left, fa_middle],
		alpha: -1,
		alpha_lerp: 0.05, // 1 for instant
		can_input: -1,
		resizePadding: 4,
		
		icon: {
			sprite_index: noone,
			image_index: 0,
			image_speed: 0,
			image_blend: c_white,
			image_alpha: 1,
			anchor: SCREEN_ANCHOR.LEFT | SCREEN_ANCHOR.VCENTER,
			padding: 4 // px
		},
		
		buttons: [],
		
		// Internal
		_real_alpha: 0,
	};
	
	static m_border = {
		left: false,
		right: false,
		top: false,
		bottom: false
	}
	
	static addButton = function(button_name, spr, ind, func, w)
	{
		array_push(Screen.captionConfig.buttons, { name: button_name, sprite_index: spr, image_index: ind, onClick: func, size: w });
		return Screen;
	}
	
	static deleteButton = function(button_name)
	{
		with Screen.captionConfig
		{
			for (var i = 0; i < array_length(buttons); i++)
			{
				var button = buttons[i];
				if button.name == button_name
					array_delete(buttons, i, 1);
			}
		}
		return Screen;
	}
	
	static updateBorder = function()
	{
		with Screen.captionConfig
		{
			if _real_alpha != alpha
			&& _real_alpha <= alpha + (alpha_lerp * 2)
			&& _real_alpha >= alpha - (alpha_lerp * 2)
				_real_alpha = lerp(_real_alpha, alpha, alpha_lerp);
				
			var mx = device_mouse_x(0), my = device_mouse_y(0);
			var wx = window_get_x(), wy = window_get_y(),
			ww = window_get_width(), wh = window_get_height();
			
			var xx = Screen.width;
			for (var i = 0; i < array_length(buttons); i++)
			{
				var button = buttons[i];
				
				if mx <= xx
				&& mx >= xx - button.size
				{
					if device_mouse_check_button_pressed(0, mb_left)
						button.func();
					
					return;
				}
			}
			
			var resize = Screen.resizing, drag = Screen.dragging;
			var _left = false, _right = false, _top = false, _bottom = false;
			
			if mx > wx + resizePadding && mx < wx + ww - resizePadding
				drag = true;
			else if mx > wx - resizePadding || mx < wx + resizePadding
			{
				resize = true;
				_left = true;
			}
			else if mx > wx + ww - resizePadding || mx < wx + ww + resizePadding
			{
				resize = true;
				_right = true;
			}
			
			if my > wy + resizePadding && my < wy + wh - resizePadding
				drag = true;
			else if my > wy - resizePadding || my < wy + resizePadding
			{
				resize = true;
				_top = true;
			}
			else if my > wy + wh - resizePadding || my < wy + wh + resizePadding
			{
				resize = true;
				_bottom = true;
			}
			
			with Screen.m_border
			{
				left = _left;
				right = _right;
				top = _top;
				bottom = _bottom;
			}
			
			if drag == true
			{
				if device_mouse_check_button_pressed(0, mb_left)
				{
					Screen.dragging = true;
					Screen._internal.xoff = mx - wx;
					Screen._internal.yoff = my - wy;
				}
				else if device_mouse_check_button(0, mb_left)
					window_set_position(mx + Screen._internal.xoff, my + Screen._internal.yoff);
				else
					Screen.dragging = false;
			}
			else if resize == true
			{
				var c = noone;
				if !_right && !_left
					c = cr_size_ns;
				else if _top || _bottom
				{
					if (_left && _bottom)
					|| (_right && _top)
						c = cr_size_nesw;
					else
						c = cr_size_nesw;
				}
				else
					c = cr_size_we;
				
				if c != noone
				{
					if device_mouse_check_button_pressed(0, mb_left)
						Screen.resizing = true;
					else if device_mouse_check_button(0, mb_left) with Screen.m_border
					{
						var new_x = wx, new_y = wy, new_w = ww, new_h = wh;
						if left
						{
							new_x = mx;
							new_w = (wx + ww) - mx;
						}
						if right
							new_w = mx - wx;
						if top
						{
							new_y = my;
							new_h = (wy + wh) - my;
						}
						if bottom
							new_h = my - wy;
							
						window_set_rectangle(new_x, new_y, new_w, new_h);
					}
					else
						Screen.resizing = false;
				}
			}
			else with Screen.m_border
			{
				self.left = false;
				self.right = false;
				self.top = false;
				self.bottom = false;
			}
		}
		return Screen;
	}
	
	static drawBorder = function()
	{
		with Screen.captionConfig
		{
			if Screen._internal.draw_icon with icon
			{
				if sprite_index != noone
				{
					var ww = Screen.width, hh = other.captionHeight;
					var xx = __getAnchorX(anchor, ww, padding);
					var yy = __getAnchorY(anchor, hh, padding);
					
					var size = min(ww - (padding * 2), hh - (padding * 2));
					draw_sprite_stretched_ext(sprite_index, image_index, xx, yy, size, size, image_blend, image_alpha);
				}
			}
			
			draw_rectangle(0, 0, Screen.width, borderHeight, false);
			draw_rectangle(0, Screen.height, Screen.width, Screen.height - borderHeight, false);
			draw_rectangle(0, 0, borderWidth, Screen.height, false);
			draw_rectangle(Screen.width, 0, Screen.width - borderWidth, Screen.height, false);
		}
		return Screen;
	}
}

__internalScreen();
global.__internalScreenStatic = static_get(__internalScreen);
__ScreenConfig();