instance_deactivate_object(other.id);

// Save reference for reactivation
wisps_list[power_level] = other.id;
power_level++;
power_level = clamp(power_level, 0, PowerLevel.LENGTH-1);

if (power_level == PowerLevel.Agile)
	audio_play_sound(snd_powerup_1, 2, false);
else if (power_level == PowerLevel.Strength)
	audio_play_sound(snd_powerup_1, 2, false);
