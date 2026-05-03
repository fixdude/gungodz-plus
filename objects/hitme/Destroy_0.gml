if can_corpse
	scrCorpse();
	
if !is_undefined(my_dsound) && my_dsound != noone
	sound_play_3d(my_dsound, x, y, z);

if !count_death
{
	UberCont.totalkills++;
	StatCont.kil++;
}
