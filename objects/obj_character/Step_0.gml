if (!input_disabled)
{
	// Input
	key_left        = input_check_analogue(0, InputAction.LEFT);
	key_right       = input_check_analogue(0, InputAction.RIGHT);
	key_up          = input_check_analogue(0, InputAction.UP);
	key_down        = input_check_analogue(0, InputAction.DOWN);
	key_action      = input_check_pressed(0, InputAction.ACTION);
	key_powerdown   = input_check_pressed(0, InputAction.DISCHARGE);
	key_action_held = input_check(0, InputAction.ACTION);
}

// if not grounded...
if (!on_ground)
{
	// If player collides on one side...
    if (collision_left || collision_right)
	{
		// Reset horizontal velocity		
		vel_x = 0;
    }
	
    vel_y = lerp(vel_y, jump_speed, grav); // Apply normal gravity
}
else // if grounded...
{
	// Reset vertical velocity if grounded
	vel_y = 0;
}

// Jump Buffering
_jump_buffer_time--;
if (key_action)
	_jump_buffer_time = jump_buffer_time;

// Orientation
if (vel_x != 0)
	facing = sign(vel_x);
	
image_xscale = cur_scale * facing;
image_yscale = cur_scale;

state_step();