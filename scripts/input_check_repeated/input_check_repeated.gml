/// @function input_check_repeated
/// @description Returns true if actions'input is repeated
/// @arg player
/// @arg action
return global.input_state[input_offset(argument0, argument1) + InputState.REPEATED];