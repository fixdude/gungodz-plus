function scrZero(str/*:(number|string)*/)
{
	if (real(str) < 10)
		str = ("0" + string(str));
	
	return string(str);
}
