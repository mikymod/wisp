/// @function input_vibrate
/// @description Makes gamepad vibrate
/// @arg {float} left_motor
/// @arg {float} right_motor
/// @arg {int} duration

with (obj_input)
{
	gamepad_set_vibration(global.input_gamepad, argument0, argument1);
	alarm_set(0, argument2);
}
