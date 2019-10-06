/// @description Set target's position on room start

if (!instance_exists(target)) return;

// Follow player horizontally
if (target_x + view_width/2 < target.x)
	target_x += (target.x - (target_x + view_width/2));
if (target_x + view_width/2 > target.x)
	target_x -= ((target_x + view_width/2) - target.x);

// Follow player vertically
if (target_y + view_height/2 < target.y)
	target_y += (target.y - (target_y + view_height/2));
if (target_y + view_height/2 > target.y)
	target_y -= ((target_y + view_height/2) - target.y);

// Clamp
target_x = clamp(target_x, 0, room_width - view_width);	
target_y = clamp(target_y, 0, room_height - view_height);

// Set position
camera_set_view_pos(view, target_x, target_y);
