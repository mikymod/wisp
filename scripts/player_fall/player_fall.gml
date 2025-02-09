if (collision_left || collision_right)
	sprite_index = spr_push_blue;
else
	sprite_index = spr_fall_blue;


// Idle
if (on_ground)
{
	//state_switch(PlayerState.Land, true);
	state_switch(PlayerState.Idle, true);
}

// Wall jump
if ((collision_right || collision_left) && (key_action))
{
	var dir = collision_right - collision_left;
	vel_x = -cur_jump_speed * dir * 0.4;
	
	state_switch(PlayerState.Jump, true);
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
	
// Movement
vel_x = approach(vel_x, (key_right - key_left) * air_speed, air_accel);

// Friction
if (key_left)
{
    if (vel_x > 0)
        vel_x = approach(vel_x, 0, air_fric);
}
else if (key_right)
{	
   if (vel_x < 0)
        vel_x = approach(vel_x, 0, air_fric);   
}
else if (!key_right && !key_left)
{
	// Apply Friction
    vel_x = approach(vel_x, 0, air_fric);
}
