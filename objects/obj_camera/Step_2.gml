#macro view view_camera[0]

camera_set_view_size(view, view_width, view_height);
camera_set_view_angle(view, angle);
var xx = camera_get_view_x(view);
var yy = camera_get_view_y(view);

if (instance_exists(target))
{
	// Follow target horizontally
	if (target_x + view_width/2 < target.x)
		target_x += (target.x - (target_x + view_width/2));
	if (target_x + view_width/2 > target.x)
		target_x -= ((target_x + view_width/2) - target.x);

	// Follow target vertically
	if (target_y + view_height/2 < target.y)
		target_y += (target.y - (target_y + view_height/2));
	if (target_y + view_height/2 > target.y)
		target_y -= ((target_y + view_height/2) - target.y);

	// Clamp on confiner's area...
	with (target) other.confiner = instance_place(x, y, obj_camera_confiner);		
	if (instance_exists(confiner))
	{
		target_x = clamp(target_x, confiner.x, (confiner.x + confiner.sprite_width) - view_width);	
		target_y = clamp(target_y, confiner.y, (confiner.y + confiner.sprite_height) - view_height);		
	}
	else // ... or on room's area
	{
		target_x = clamp(target_x, 0, room_width - view_width);	
		target_y = clamp(target_y, 0, room_height - view_height);
	}
	
	// Move
	xx = approach(camera_get_view_x(view), target_x, lerp_speed);
	yy = approach(camera_get_view_y(view), target_y, lerp_speed);
}

// Shake
if (shake)
{
	xx += irandom_range(shake_range_min, shake_range_max);
	yy += irandom_range(shake_range_min, shake_range_max);
}

// Position
camera_set_view_pos(view, xx, yy);
