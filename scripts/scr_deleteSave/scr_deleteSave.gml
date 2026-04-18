function file_delete_backup(filename)
{
	var s = string_split(filename, ".", false, 1), name = s[0], ext = $".{s[1]}";
	
	FORCEINLINE;
	if file_exists(name + ext)
	{
		var _i = 9;
		repeat 9
		{
			if file_exists($"{name}_backup_{_i}{ext}")
				file_rename($"{name}_backup_{_i}{ext}", $"{name}_backup_{_i + 1}{ext}");
			_i--;
		}
		
		file_rename(name + ext, $"{name}_backup_1{ext}");
	}
}

function scr_deleteSave()
{
	file_delete_backup("gg1.bin");
	file_delete_backup("gg2.bin");
}
