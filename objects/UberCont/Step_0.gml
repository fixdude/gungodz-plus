native_cursor_update();

if use_native_cursor
{
	var w = window_has_focus();
	if focus != w
	{
		focus = w;
		if w
			native_cursor_set(cur);
		else
			native_cursor_reset();
	}
}