if (state_is_new())
{
	// Change sprite
	sprite_index = spr_powerup;
	image_index = 0;

	// Play sound
	if (power_level == PowerLevel.Agile)
		audio_play_sound(snd_powerup_1, 2, false);
	else if (power_level == PowerLevel.Strength)
		audio_play_sound(snd_powerup_1, 2, false);
		
	camera_shake();
}

// Stop movement
vel_x = 0;
vel_y = 0;