if (!discharge_avail) return;
if (power_level == PowerLevel.Normal)
{
	// Play Sound
	if (!audio_is_playing(snd_powerdown_fail))
		audio_play_sound(snd_powerdown_fail, 2, false);
		
	return;
}

// Power level down
power_level--;

// Reactivate buff
instance_activate_object(wisps_list[power_level]);

// Play sound
if (!audio_is_playing(snd_powerdown))
		audio_play_sound(snd_powerdown, 2, false);

// Disable discharge and put on cooldown
discharge_avail = false;
alarm_set(1, discharge_cd);