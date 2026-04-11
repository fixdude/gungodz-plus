// It's named macros but it can also contain other stuff.

#region Compatibility

function instance_create(x, y, obj)
{
	var myDepth = object_get_depth(obj);
	return instance_create_depth(x, y, myDepth, obj);
}

#endregion

#macro NUM_WORLDS 4
#macro NUM_LEVELS 4

enum Weapons
{
	None,
	Pistol,
	Shotgun,
	Minigun,
	Bazooka,
	Knife
}