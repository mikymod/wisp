/// @function game_instance_deactivate
/// @arg id

ds_map_add(global.prepause_inactive_inst, argument0, argument0);
instance_deactivate_object(argument0);
