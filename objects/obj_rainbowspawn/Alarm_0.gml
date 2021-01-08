if(instance_exists(obj_rainbow))
{
	instance_create_layer(irandom_range(30,500),70,"Player",obj_rainbowdrop)
	alarm[0] = spawnrate
}