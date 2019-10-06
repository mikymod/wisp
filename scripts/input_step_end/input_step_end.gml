/// @arg repeat_delay
/// @arg longpress_delay
/// @arg doubletap_delay

var repeat_delay    = argument0;
var longpress_delay = argument1;
var doubletap_delay = argument2;

for (var player = 0; player < global.input_max_players; player++)
{
    for (var action = 0; action < InputAction._SIZE; action++)
    {
        var offset = input_offset(player, action);
        //Clear out our momentary states
        global.input_state[offset + InputState.PRESSED         ] = false;
        global.input_state[offset + InputState.RELEASED        ] = false;
        global.input_state[offset + InputState.REPEATED        ] = false;
        global.input_state[offset + InputState.LONG            ] = false;
        global.input_state[offset + InputState.DOUBLE_PRESSED  ] = false;
        global.input_state[offset + InputState.DOUBLE_RELEASED ] = false;

        if (global.input_state[offset + InputState.NEW_ON])
        {
            //If this input is ON this frame...
            if (global.input_state[offset + InputState.ON])
            {
                //...and the input was ON last frame too...
                if (current_time - global.input_state[offset + InputState.REPEAT_TIME] >= repeat_delay)
                {
                    //...then trigger the REPEATED state if we've been holding the button for long enough
                    global.input_state[offset + InputState.REPEATED] = true;
                    global.input_state[offset + InputState.REPEAT_TIME] = current_time;
                }

                //Update the LONG state based on the time since we set the input to PRESSED and now
                global.input_state[offset + InputState.LONG] = (current_time - global.input_state[offset + InputState.PRESSED_TIME] >= longpress_delay);
            }
            else
            {
                //...and the input was OFF last frame then we've switched on the input slot
                global.input_state[offset + InputState.PRESSED] = true;
                global.input_state[offset + InputState.REPEATED] = true;

                if (global.input_state[offset + InputState.PRESSED_INDEX] == global.input_state[offset + InputState.NEW_PRESSED_INDEX])
                {
                    //If we've pressed the same button as we did last time the button was pressed, check to see if this counts as a double tap
                    if (current_time - global.input_state[offset + InputState.PRESSED_TIME] <= doubletap_delay)
                    {
                        global.input_state[offset + InputState.DOUBLE_PRESSED] = true;
                        global.input_state[offset + InputState.DOUBLE_ON     ] = true;
                    }
                }
                else
                {
                    //If we've pressed a different button than we did last time the button was pressed, update our input state
                    global.input_state[offset + InputState.PRESSED_INDEX] = global.input_state[offset + InputState.NEW_PRESSED_INDEX];
                }

                //Set some timers to record when we first switched on this input slot
                global.input_state[offset + InputState.PRESSED_TIME] = current_time;
                global.input_state[offset + InputState.REPEAT_TIME ] = current_time;
            }
        }
        else
        {
            //If this input is OFF this frame...
            if (global.input_state[offset + InputState.ON])
            {
                //...and we were ON the last frame, the input has been RELEASED
                global.input_state[offset + InputState.RELEASED] = true;
            }

            if (global.input_state[offset + InputState.DOUBLE_ON])
            {
                //If the input had been double-tapped, then turn that off too
                global.input_state[offset + InputState.DOUBLE_ON      ] = false;
                global.input_state[offset + InputState.DOUBLE_RELEASED] = true;
            }
        }

        //Update the ON state for input checking, and for comparison next frame
        global.input_state[offset + InputState.ON] = global.input_state[offset + InputState.NEW_ON];
    }
}
