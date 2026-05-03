// doing ANYTHING to type slightly less
#macro logoGroup ("logoGroup")
#macro menuGroup ("menuGroup")
#macro tileTexGroup ("tileTexGroup")
#macro enemyGroup ("enemyGroup")
#macro gameGroup ("gameGroup")

function tgroup(texturegroup_name)
{
	static name = "";
	tgroup.name = texturegroup_name;
	
	static status = function()
	{
		FORCEINLINE;
		return texturegroup_get_status(tgroup.name);
	}
	
	static load = function(prefetch = true)
	{
		FORCEINLINE;
		var q = 0;
		if argument_count < 2
			q = texturegroup_load(tgroup.name, prefetch)
		else
		{
			for (var i = 1; i < argument_count; i++)
				q += texturegroup_load(argument[i], prefetch);
		}
		return q;
	}
	
	static loadsync = function(prefetch = true)
	{
		FORCEINLINE;
		var q = -1;
		if argument_count < 2
			q = texturegroup_load(tgroup.name, prefetch)
		else
		{
			while (q < 0)
			{
				q = 0;
				for (var i = 1; i < argument_count; i++)
				{
					texturegroup_load(argument[i], prefetch);
					q -= texturegroup_get_status(argument[i]) >= texturegroup_status_loaded;
				}
			}
		}
		return q;
	}
	
	static unload = function()
	{
		FORCEINLINE;
		if argument_count > 0
		{
			for (var i = 0; i < argument_count; i++)
				texturegroup_unload(argument[i]);
		}
		else
			texturegroup_unload(tgroup.name);
	}
	
	return static_get(tgroup);
}
tgroup();