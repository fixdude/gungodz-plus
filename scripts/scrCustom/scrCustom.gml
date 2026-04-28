function override_instance_create(x, y, obj, var_struct = undefined)
{
	if is_string(obj)
	{
		with instance_create(x, y, _custom, var_struct)
			_scr_custom_start(obj);
	}
	return instance_create(x, y, obj, var_struct);
}

function override_instance_create_depth(x, y, depth, obj, var_struct = undefined)
{
	if is_string(obj)
	{
		with instance_create_depth(x, y, depth, _custom, var_struct)
			_scr_custom_start(obj);
	}
	return instance_create_depth(x, y, depth, obj, var_struct);
}

function override_instance_create_layer(x, y, layer_id_or_name, obj, var_struct = undefined)
{
	if is_string(obj)
	{
		with instance_create_layer(x, y, layer_id_or_name, _custom, var_struct)
			_scr_custom_start(obj);
	}
	return instance_create_layer(x, y, layer_id_or_name, obj, var_struct);
}

function _scr_custom_start(name)
{
	FORCEINLINE;
	var o = mod_current.objects[? name];
	____model = o;
	____name = name;
	____parent = o.parent;
	
	
	eventList = {};
}

function _scr_custom_do(ev_number)
{
	
}