if active
{
	if gp_any(gamepad_button_check_pressed, 0)
	|| keyboard_check_pressed(vk_anykey)
	|| InputMouseCheck(mb_any)
	{
		tgroup(logoGroup).unload();
		instance_create(x, y, LevelSelect);
		active = false;
	}

	if is_desktop && InputPressed(INPUT_VERB.PAUSE)
		game_end();
}