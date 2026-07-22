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

// https://github.com/YoYoGames/GameMaker-Bugs/issues/15646
	
/// @param {real} x X The X coordinate to create the instance at.
/// @param {real} y Y The Y coordinate to create the instance at.
/// @param {Asset.GMObject} obj Object The object asset to spawn.
/// @param {Struct|Undefined} [var_struct] Variable struct to pass into the instance.
/// @returns {Id.Instance}
function instance_create(x/*:number*/, y/*:number*/, obj/*:object*/, var_struct/*:any_fields_of<object>*/ = {})
{
	return instance_create_depth(x, y, 0, obj, var_struct);
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
