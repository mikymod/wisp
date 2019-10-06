/// @function input_step_begin
/// @description

for (var player = 0; player < global.input_max_players; player++)
{
    for (var action = 0; action < InputState._SIZE; action++)
    {
        var offset = input_offset(player, action);

        global.input_state[offset + InputState.NEW_ON] = false;
        global.input_state[offset + InputState.NEW_PRESSED_INDEX] = undefined;
        global.input_state[offset + InputState.ANALOGUE] = 0;
    }
}