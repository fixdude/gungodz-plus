var mx = InputMouseGuiX(), my = InputMouseGuiY();
if InputMousePressed(mb_left)
&& mx > x && my > y && mx < x + sprite_width && my < y + sprite_height
&& onPress != noone
{
	if is_callable(onPress)
		return onPress();
	room_goto(onPress);
}