function scrZero(str)
{
	if real(str) < 10
		str = "0" + string(str);
	
	return str;
}
