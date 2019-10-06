/// @arg player
/// @arg action
/// @arg button

var player = argument[0];
var action = argument[1];
var button = argument[2];

for (var i = 2; i < argument_count; i++)
{
    if (device_mouse_check_button(0, button))
    {
        var offset = input_offset(player, action);
        global.input_state[offset + InputState.NEW_ON] = true;
        global.input_state[offset + InputState.NEW_PRESSED_INDEX] = button;
        global.input_state[offset + InputState.ANALOGUE] = 1;
        global.input_state[offset + InputState.DEVICE_KIND] = InputDevice.MOUSE;
    }
}