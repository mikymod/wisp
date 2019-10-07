sprite_index = spr_idle_blue;

// Run
if (key_left || key_right)
{
	if (on_ground)
		state_switch(PlayerState.Run, true);
	else
		state_switch(PlayerState.Fall, true);
}
else
{
	vel_x = approach(vel_x, 0, ground_fric);
}

// Jump
if (on_ground && _jump_buffer_time > 0)
{
	state_switch(PlayerState.Jump, true);
}

// Fall
if (!on_ground)
{
	state_switch(PlayerState.Fall, true);
}

// Discharge
if (key_powerdown)
{
	if (powerdown_avail && power_level > PowerLevel.Normal)
		state_switch(PlayerState.PowerDown, true);
	else
	{
		// Play Sound
		if (!audio_is_playing(snd_powerdown_fail))
			audio_play_sound(snd_powerdown_fail, 2, false);
	}
}
