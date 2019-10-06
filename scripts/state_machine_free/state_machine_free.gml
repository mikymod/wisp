/// @function state_machine_free
/// @description Cleanup

ds_map_destroy(_state_map);
ds_stack_destroy(_state_stack);