/// @function state_switch
/// @description Switch to a specific state
/// @arg {enum} key
/// @arg {bool} push_to_stack

var key = argument[0];
var push = (argument_count > 1 ? argument[1] : true);
  
if (ds_map_exists(_state_map, key))
{
    _state_next = key;
}
else
{
    show_debug_message("Error: Tried to switch to a non-existent state. Switch to default state.")
    _state_next = _state_default;
}

if (push) 
    ds_stack_push(_state_stack, _state_next);