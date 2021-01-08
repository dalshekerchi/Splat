//Shooting (Rainbow)
if (rainbowdown <=0) && (instance_exists(obj_player)) && ((distance_to_object(obj_player) < 650)) && (!instance_exists(obj_rainbow)) && (instance_exists(obj_boss))
{
	instance_create_layer(x,y,"EnemyRange",obj_rainbow);
	sprite_index = spr_rainbowmove
	rainbowdown = 1;
}

//Shooting (Last resort)
if (bulletcooldown <= 0) && (hp <= 50) && (instance_exists(obj_boss))
{
	audio_play_sound(snd_spell, 1, 0)
	spite_index = spr_specialattack
	instance_create_layer(x,570,"Player",obj_bigattack)
	bulletcooldown = 40
}

bulletcooldown -= 1


//Health
if (hp <= 0)
{
	room_goto(rm_win);
	instance_destroy();
	with(obj_game) score = score +1;
}	


