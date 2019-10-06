/// @function input_check_double
/// @description Returns true if actions'input is pressed two times
/// @arg player
/// @arg action
return global.input_state[input_offset(argument0, argument1) + InputState.DOUBLE_ON];