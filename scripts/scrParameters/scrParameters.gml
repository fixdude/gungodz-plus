function scrParameters()
{
	var param_string = [];
	var param_count = parameter_count();
	if param_count > 0
	{
	    for (var i = 0; i < param_count; i++)
	        param_string[i] = parameter_string(i + 1);
			
		var openEditor = file_exists(param_string[0]);
	}
	
	show_message(param_string);
	return param_string;
}