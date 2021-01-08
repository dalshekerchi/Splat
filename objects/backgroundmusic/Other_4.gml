if (room=rm_level3) 
{
	audio_play_sound(snd_ultra, 1, 1);
	audio_stop_sound(snd_back);
}

if (room != rm_level3) {audio_stop_sound(snd_ultra);}

if (room=rm_level5) 
{
	audio_play_sound(snd_bokuno, 1, 1);
	audio_stop_sound(snd_back);
}

if (room != rm_level5) {audio_stop_sound(snd_bokuno);}

if (room=rm_start) 
{
	audio_play_sound(snd_dbz, 1, 1);
	audio_stop_sound(snd_back);
}
	
if (room != rm_start) {audio_stop_sound(snd_dbz);}

if (room != rm_start) && (room != rm_level5) && (room != rm_level3) && (room != rm_howtoplay)
{
	audio_play_sound(snd_back, 1, 0);
}