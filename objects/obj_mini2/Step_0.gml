//Shooting (Fireball)
if (instance_exists(obj_player)) && (FireballCooldown <= 0) && ((distance_to_object(obj_player) < 4000))
{
	point_direction(x,y,obj_player.x,obj_player.y);
	instance_create_layer(x,y,"Player",obj_minibullet2);
	FireballCooldown = 300;
}
FireballCooldown -= 1;

//Shooting (Spikes)
if(instance_exists(obj_player)) && (SpikeCooldown <= 0) && ((distance_to_object(obj_player) < 600))
{
	point_direction(x,y,obj_player.x,obj_player.y);
	instance_create_layer(x,y,"EnemyRange",obj_spike);
	SpikeCooldown = irandom_range(35,65)
}

SpikeCooldown -= 1;

//Health
if (hp <= 0)
{
	instance_destroy();
	with(obj_game) score = score +1;
}
	