// Block position
vel_x = 0;
vel_y = 0;

// Change sprite
sprite_index = spr_death_blue;

if (state_is_new())
{
	// Reset animation
	image_index = 0;
	
	// Play sound
	audio_play_sound(snd_death, 2, false);
}

// Restart at animation's end
if (image_index + image_speed >= image_number)
{
	room_restart();
}



