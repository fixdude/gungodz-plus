function sound_play(snd, emitter = noone, bus = MusCont.sfx_bus)
{
	return emitter != noone
	? audio_play_sound_on(emitter, snd, false, 10)
	: audio_play_sound(snd, 10, false);
}

function sound_play_3d(snd, x, y, z = 0, bus = MusCont.sfx_bus)
{
	return audio_play_sound_at(snd, x, y, z, 400, 800, 1, false, 10);
}

function sound_loop(snd, emitter = noone, bus = MusCont.sfx_bus)
{
	var s = sound_play(snd, emitter, bus);
	audio_sound_loop(s, true);
	return s;
}

function sound_loop_3d(snd, x, y, z = 0, bus = MusCont.sfx_bus)
{
	var s = sound_play_3d(snd, x, y, z, bus);
	audio_sound_loop(s, true);
	return s;
}

function sound_emitter(x, y, z = 0)
{
	var emt = audio_emitter_create();
	audio_emitter_position(emt, x, y, z);
	audio_emitter_bus(emt, MusCont.sfx_bus);
}

function sound_emitter_pos(emt, x, y, z = 0)
{
	audio_emitter_position(emt, x, y, z);
}

#macro sound_isplaying audio_is_playing
#macro sound_stop audio_stop_sound
#macro sound_stop_all audio_stop_all
#macro sound_volume audio_sound_gain

#macro scrMusic MusCont.play