// It's named macros but it can also contain other stuff.
// actually it mostly doesn't even have actual macros

/// @typedef {string} TexGroup
texturegroup_set_mode(true, GM_build_type == "run", sprSecret);

/// @typedef {int} color
/// @typedef {int} colour

// For Input:
/// @typedef {Constant.MouseButton} mouse_button
/// @typedef {Enum.INPUT_VERB} input
// ^ I thought I would use this one but nope

var q/*:input*/ = INPUT_VERB.LEFT;

#macro is_desktop (os_type == os_windows || os_type == os_linux || os_type == os_macosx)
#macro use_native_cursor (os_type == os_windows && extension_exists("native_cursor"))
#macro use_steam extension_exists("Steamworks")
#macro FORCEINLINE gml_pragma("forceinline")

globalvar steam_enabled; steam_enabled = false;

#region Compatibility

global.__objectDepths = ds_map_create();
function object_get_depth(obj/*:object*/)
{
	FORCEINLINE;
	var d = global.__objectDepths[? obj];
	return d == undefined ? 0 : d;
}

function instance_create(x/*:number*/, y/*:number*/, obj/*:object*/, var_struct/*:any_fields_of<object>*/ = undefined)
{
	var myDepth = object_get_depth(obj);
	return instance_create_depth(x, y, myDepth, obj, var_struct);
}

function draw_background_ext(sprite/*:sprite*/, x/*:number*/, y/*:number*/, xscale/*:number*/, yscale/*:number*/, rot/*:number*/, col/*:color*/, alpha/*:number*/)
{
	draw_sprite_ext(sprite, 0, x, y, xscale, yscale, rot, col, alpha);
}

#macro draw_set_blend_mode gpu_set_blendmode

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
	Knife,
	
	Length
}

enum WepPressType
{
	Press,
	Hold,
	Release,
	
	Length
}
