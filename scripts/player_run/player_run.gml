if (collision_left || collision_right)
{
	if (!type_of_obj(obj_movable_block, wall_target))
		sprite_index = spr_push_blue;
}
else
	sprite_index = spr_walk_blue;

// Ledge assistance
// If player is not grounded (and should switch to Fall state next frame),
// checks if {key_jump} is pressed after {jump_grace_step} steps.
// If true, switch to jump state. Otherwise, switch to Fall state on {alarm[0]}
if (!on_ground && (on_ground != prev_on_ground))
{
	_jump_grace_avail = true;
	alarm[0] = jump_grace_step;   // Switch to Fall state here
}
if (_jump_grace_avail && key_action)
{
	state_switch(PlayerState.Jump, true);
}

// Jump
if (on_ground && _jump_buffer_time > 0)
{
	state_switch(PlayerState.Jump, true);
}

// Discharge
if (key_discharge)
	player_discharge();

// Run
vel_x = approach(vel_x, (key_right - key_left) * (run_speed), run_accel);

if (place_meeting(x + sign(vel_x), y, obj_movable_block))
{
	var block = instance_place(x + sign(vel_x), y, obj_movable_block);
	with (block)
	{
		if (other.power_level == PowerLevel.Strength)
			vel_x = other.vel_x;
	}
}

// Apply friction
if (key_left)
{
    if (vel_x > 0)
        vel_x = approach(vel_x, 0, ground_fric);
}
else if (key_right)
{	
   if (vel_x < 0)
        vel_x = approach(vel_x, 0, ground_fric);   
}
else if (!key_right && !key_left)
{
	state_switch(PlayerState.Idle);
}
