// doing ANYTHING to type slightly less
#macro logoGroup ("logoGroup")
#macro menuGroup ("menuGroup")
#macro tileTexGroup ("tileTexGroup")
#macro enemyGroup ("enemyGroup")
#macro gameGroup ("gameGroup")

function multif(func)
{
	for (var i = 1; i < argument_count; i++)
		func(argument[i]);
}
