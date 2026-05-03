if InputReleased(INPUT_VERB.PAUSE)
{
	InputVerbConsume(INPUT_VERB.PAUSE);
	instance_destroy();
	instance_activate_all();
}
else if InputCheck(INPUT_VERB.PAUSE)
{
	if exittime < 45
		exittime += 1 fmt;
	else
	{
		tgroup.unload(tileTexGroup, enemyGroup, gameGroup);
		tgroup.loadsync(true, "menuGroup", "logoGroup");
		
		instance_destroy();
		instance_activate_all();
		room_goto(menLevelSelect);
	}
}
else if exittime > 0
{
	exittime -= 1 fmt;
	if exittime < 0
		exittime = 0;
}