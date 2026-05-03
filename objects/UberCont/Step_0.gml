scr_updateAchievements();
tim += 1 fmt;

InputPlayerSetBlocked(is_keyboard_used_debug_overlay() || is_mouse_over_debug_overlay());

if !instance_exists(AchievPopup) && !ds_queue_empty(achievQueue)
{
	with instance_create(0, 0, AchievPopup)
	{
		achiev = ds_queue_dequeue(other.achievQueue);
		event_user(0);
	}
}

var _inMenu = room == romIntro || room == menLevelSelect || room == romCredits || room == romOptions || room == romControls;
var _playerActive = instance_exists(Player) && !Player.dead && !Player.win;
var _focus = InputGameHasFocus();

window_mouse_set_locked(!_inMenu && !instance_exists(obj_pause) && _playerActive);

if InputPressed(INPUT_VERB.PAUSE) || !_focus
{
	if _inMenu
	{
		if instance_exists(obj_ControlsMenu) || instance_exists(obj_OptionsMenu)
			room_goto(menLevelSelect);
	}
	else if !instance_exists(obj_pause) && _playerActive
	{
		InputVerbConsume(INPUT_VERB.PAUSE);
		instance_deactivate_all(true);
		instance_activate_object(StatCont);
		instance_activate_object(__InputUpdateController);
		instance_create_depth(0, 0, 0, obj_pause);
	}
}

if use_native_cursor
{
	native_cursor_update();

	if _inMenu && _focus
	{
		if focus != _focus
		{
			focus = _focus;
			if _focus
			{
				native_cursor_set(cur);
				cursor = true;
			}
			else
			{
				native_cursor_reset();
				cursor = false;
			}
		}
	}
	else
	{
		native_cursor_reset();
		cursor = false;	
	}
}


if steam_is_screenshot_requested()
{
	var num = 0;
	var file = $"GUNGODZ_00.png";
	while file_exists(file)
		file = $"GUNGODZ_{scrZero(++num)}.png";
	
	screen_save(file);
	steam_send_screenshot(file, window_get_width(), window_get_height());
}
