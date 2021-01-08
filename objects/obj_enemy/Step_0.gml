//Patrolling Enemy
if(state=="left") hspeed = -5;
else
if(state=="right") hspeed = 5;

if place_meeting(x+hspeed,y,obj_inviswall)
if(state=="left")state="right";
else
state="left";

if (place_meeting(x,y+vsp,obj_wall))
{
	while (!place_meeting(x,y+sign(vsp),obj_wall)) 
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

vsp = vsp+ grv;

// Health
if (hp <= 0)
{
	audio_play_sound(snd_death, 1, 0);
	instance_destroy();
	with(obj_game) score = score +1;
	audio_play_sound(snd_death,1,0);
}

//Animations
if(!place_meeting(x,y+1,obj_wall))
{
	image_speed = 1;
	if (hspeed == 0)
	{
		sprite_index = spr_enemy;
	}
	else
	{
		sprite_index = spr_enemyR;
	}
}
if (hspeed != 0) image_xscale = sign(hspeed);
