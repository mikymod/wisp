/// @function game_instance_activate
/// @arg id

ds_map_delete(global.prepause_inactive_inst, argument0);
instance_activate_object(argument0);