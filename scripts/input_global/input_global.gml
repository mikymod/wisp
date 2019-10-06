enum InputDevice
{
    KEYBOARD,
    MOUSE,
    GAMEPAD_BUTTON,
    GAMEPAD_AXIS
}

enum InputState
{
    ON,                // input on last frame
    PRESSED,           // input is pressed
    RELEASED,          // input is released
    REPEATED,          // input is repeated
    LONG,              // input is long pressed
    DOUBLE_ON,         
    DOUBLE_PRESSED,    // input is double pressed
    DOUBLE_RELEASED,   // input is double released
    PRESSED_TIME,      // time since a input is held
    PRESSED_INDEX,     // index of pressed input (last frame)
    REPEAT_TIME,       // when current state starts repeating
    ANALOGUE,          // analogue value
    NEW_ON,            // any input this frame?
    NEW_PRESSED_INDEX, // index of pressed input (current frame)
    DEVICE_KIND,       // device's kind
    _SIZE
};

enum InputAction
{
	UP,
	DOWN,
    LEFT,
    RIGHT,
    ACTION,
	DISCHARGE,
	PAUSE,
    _SIZE
}

global.input_max_players = 1;
global.input_gamepad = -1;
global.input_state = array_create(global.input_max_players * InputAction._SIZE * InputState._SIZE);
