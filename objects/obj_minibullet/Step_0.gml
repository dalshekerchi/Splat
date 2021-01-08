// Moverment
move_towards_point(obj_player.x,obj_player.y,spd);

//Health
if (hp <= 0)
{
	audio_play_sound(snd_death,1,0);
	instance_destroy();
	with(obj_game) score = score +1;
}

image_angle = direction + 180;	