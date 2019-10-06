// Jump
if (state_is_new())
{
	vel_y = -cur_jump_speed;
}

// Variable Jump
if (!key_action_held && vel_y < 0)
{
	vel_y *= 0.5;
}

// Collision on top
if (place_meeting(x, y - 1, obj_solid))
{
	vel_y = 0;
}

// Transition to Fall state
if (vel_y >= 0)
{
	// Jump buffering unavailable
	_jump_buffer_time = 0;
	state_switch(PlayerState.Fall, true);
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
