// Idle
if (on_ground)
{
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
if (key_discharge)
	player_discharge();

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
