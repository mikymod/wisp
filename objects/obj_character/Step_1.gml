// Collisions
prev_on_ground  = on_ground;
on_ground       = place_meeting(x, y + 1, obj_solid);
collision_left  = place_meeting(x - 1, y, obj_solid);
collision_right = place_meeting(x + 1, y, obj_solid);
collision_top   = place_meeting(x, y - 1, obj_solid);

ground_target = (on_ground ? instance_place(x, y + 1, obj_solid) : noone);
wall_target   = (collision_left ? instance_place(x - 1, y, obj_solid) : 
					(collision_right ? instance_place(x + 1, y, obj_solid) : noone));
					
// Land 
if (on_ground && !prev_on_ground)
{
	
}
