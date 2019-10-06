if (vel_x != 0)
{
	// apply friction
	vel_x = approach(vel_x, 0, fric);
}

if (!place_meeting(x, y+1, obj_solid))
{
	// Apply gravity
	vel_y = approach(vel_y, grav, 0.1);
}
