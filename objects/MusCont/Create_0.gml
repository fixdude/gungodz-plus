music_bus = audio_bus_create();
music_emitter = audio_emitter_create();
audio_emitter_bus(music_emitter, music_bus);

// To define what SFX means, since it may be subjective sometimes:
// Everything that's not music is SFX.
sfx_bus = audio_bus_create();
sfx_emitter = audio_emitter_create(); // Used by default
sfx_3d_emitter = audio_emitter_create();
audio_emitter_bus(sfx_emitter, sfx_bus);
audio_emitter_bus(sfx_3d_emitter, sfx_bus);

audio_falloff_set_model(audio_falloff_linear_distance);
audio_emitter_falloff(sfx_3d_emitter, 400, 800, 1);

currentMusic = noone;
musicStream = noone;
musicHandle = noone;

play = function(mus)
{
	if !audio_exists(mus)
		return;
		
	if sound_isplaying(musicHandle)
		sound_stop(musicHandle);

	currentMusic = mus;
	musicHandle = audio_play_sound_on(music_emitter, mus, true, 100);
	sound_volume(mus, db_read(global.dbSettings, 0.8, "music"));
}
