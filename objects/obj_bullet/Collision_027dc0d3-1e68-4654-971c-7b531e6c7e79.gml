repeat(10){
        instance_create_layer(x,y,"Gun",obj_debris);
}
audio_play_sound(snd_splat, 1, 0);
instance_destroy()