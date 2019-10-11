// Activate all instances
instance_activate_all();

// Deactivate each instance that was inactive before pause
for (var k = ds_map_find_first(global.prepause_inactive_inst); !is_undefined(k); k = ds_map_find_next(global.prepause_inactive_inst, k))
{
	var v = global.prepause_inactive_inst[? k];
	instance_deactivate_object(v);
}
