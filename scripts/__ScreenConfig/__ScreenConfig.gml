function __ScreenConfig()
{
	// Do whatever you want here to start up the Screen extension
	// You can change the name of this macro if you want, to prevent conflicts incase you already
	// have an object named Screen or some other asset. It's a pretty generic name
	#macro Screen global.__internalScreenStatic
	
	// VSYNC INFORMATION:
	// There is no getter in base GM yet (There should have been one already)
	// so this asset cannot identify it automatically.
	// You'll have to set this in both setups according to what's in your Game Options -
	// look for the 'Use synchronization to avoid screen tearing' option
	// Remember that you can select different options for different platforms, so make sure to do
	// os_type checks if you ARE making it on/off in different platforms.
	
	// You can do with Screen, and don't be afraid to!
	with Screen
	{
		// DISPLAY
		
		// Manual setup
		/*
		aspect_ratio = 16/9; // You can write it out like this
		size = 1080; // Default multiplier. The game size is (size * aspect_ratio)x(size)
		// Example: 16:9 ratio with size 1080 means the game is 1920x1080
		
		vsync = true;
		
		// Sets the width & height accordingly, accounting for Portrait mode (Avoid setting width/height directly!)
		// Also sets vsync to false, if not supported by the current platform.
		sync();
		*/
		
		// Automatic setup (argument is if VSync is on, see the comments at the top)
		// This will automatically identify the game's display information based on the first room.
		// If this is not suitable for your game, see the manual setup above
		defaults(true);
		
		// Apply all settings, and center the window
		apply(true);
		
		// CAPTION CONFIG
		
		// This is the configuration of the custom window caption from this asset.
		// If you do not wish to use it, keep this section commented out.
		with captionConfig
		{
			// Make sure to disallow window resizing in the game options and set 'Borderless window' to on if available.
			// Check the documentation for available settings.
		}
		
		// Added right to left
		var w = 64;
		addButton("close", sprWindowButtons, 0, function()
		{
			game_end();
		}, w);
		addButton("maximize", sprWindowButtons, 1, function()
		{
			original_width = Screen.width;
			original_height = Screen.height;
			
			Screen.width = display_get_width();
			Screen.height = display_get_height();
			
			window_set_size(display_get_width(), display_get_height());
			window_center();
		}, w);
		addButton("minimize", sprWindowButtons, 2, function()
		{
			window_minimise();
		}, w);
	}
}