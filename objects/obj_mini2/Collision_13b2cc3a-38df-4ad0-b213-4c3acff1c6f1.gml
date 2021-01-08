if (lives > 0)
{
	lives-=1;
	obj_player.x = 255
	obj_player.y = 542
}
else
{
	room_restart()
}

instance_destroy();