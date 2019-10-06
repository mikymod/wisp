/// @function state_switch_previous
/// @description Pop last state from stack and set top to next state

ds_stack_pop(_state_stack);
_state_next = ds_stack_top(_state_stack);