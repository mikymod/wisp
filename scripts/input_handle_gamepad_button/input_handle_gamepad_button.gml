/// @arg player
/// @arg action
/// @arg button
/// @arg device

var player = argument[0];
var action = argument[1];
var device = argument[2];
var button = argument[3];

for (var i = 2; i < argument_count; i++)
{
    if (gamepad_button_check(device, button))
    {
        var offset = input_offset(player, action);
        global.input_state[offset + InputState.NEW_ON] = true;
        global.input_state[offset + InputState.NEW_PRESSED_INDEX] = button;
        global.input_state[offset + InputState.ANALOGUE] = 1;
        global.input_state[offset + InputState.DEVICE_KIND] = InputDevice.GAMEPAD_BUTTON;
    }
}