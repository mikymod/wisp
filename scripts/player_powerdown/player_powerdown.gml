if (state_is_new())
{
	// Reset animation
	sprite_index = spr_powerdown;
	image_index = 0;
	
	// Power level down
	power_level--;

	// Reactivate buff after delay
	alarm_set(2, 30);

	// Play sound
	if (!audio_is_playing(snd_powerdown))
			audio_play_sound(snd_powerdown, 2, false);

	// Disable discharge and put on cooldown
	powerdown_avail = false;
	alarm_set(1, discharge_cd);
}

// Stop movement
vel_x = 0;
vel_y = 0;