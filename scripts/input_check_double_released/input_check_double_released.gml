/// @function input_check_double_released
/// @description Returns true if actions'input is double released
/// @arg player
/// @arg action
return global.input_state[input_offset(argument0, argument1) + InputState.DOUBLE_RELEASED];