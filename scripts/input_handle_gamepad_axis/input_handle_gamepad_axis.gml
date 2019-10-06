/// @arg player
/// @arg action
/// @arg button
/// @arg device
/// @arg threshold

var player    = argument[0];
var action    = argument[1];
var device    = argument[2];
var axis      = argument[3];
var threshold = argument[4];

if (!gamepad_is_connected(device))
	return;

for (var i = 2; i < argument_count; i++)
{
    if (gamepad_axis_value(device, axis) * sign(threshold) > abs(threshold))
    {
        var offset = input_offset(player, action);
        global.input_state[offset + InputState.NEW_ON] = true;
        global.input_state[offset + InputState.NEW_PRESSED_INDEX] = axis;
        global.input_state[offset + InputState.ANALOGUE] = gamepad_axis_value(device, axis) * sign(threshold);
        global.input_state[offset + InputState.DEVICE_KIND] = InputDevice.GAMEPAD_AXIS;
    }
}