/// @arg player
/// @arg action
/// @arg keyboard_button
/// @arg [keyboard_button...]

var player = argument[0];
var action = argument[1];

for (var i = 2; i < argument_count; i++)
{
    if (keyboard_check(argument[i]))
    {
        var offset = input_offset(player, action);
        global.input_state[offset + InputState.NEW_ON] = true;
        global.input_state[offset + InputState.NEW_PRESSED_INDEX] = argument[i];
        global.input_state[offset + InputState.ANALOGUE] = 1;
        global.input_state[offset + InputState.DEVICE_KIND] = InputDevice.KEYBOARD;
    }
}