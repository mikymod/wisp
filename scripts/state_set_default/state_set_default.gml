/// @function state_set_default
/// @description set default state. Must be called once after state creation.
/// @arg {enum} key

if (!is_undefined(_state_default) && ds_stack_size(_state_stack) > 0)
{
    show_debug_message("Error: default state is already set");
    return;
}

var key = argument0;
if (!ds_map_exists(_state_map, key))
{
    show_debug_message("Error: state does not exists, unable to set to default");
    return;
}

_state_default = key;
_state_next = _state_default;
ds_stack_push(_state_stack, _state_default);