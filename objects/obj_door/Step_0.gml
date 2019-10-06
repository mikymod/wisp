if (!place_meeting(x, y+1, obj_solid))
{
	// Apply gravity
	vel_y = approach(vel_y, grav, 0.1);
}