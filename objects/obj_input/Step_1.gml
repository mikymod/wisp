input_step_begin();

input_handle_gamepad_axis(0, InputAction.UP, global.input_gamepad, gp_axislv, -0.5);
input_handle_keyboard(0, InputAction.UP, vk_up,  ord("W"));

input_handle_gamepad_axis(0, InputAction.DOWN, global.input_gamepad, gp_axislv, 0.5);
input_handle_keyboard(0, InputAction.DOWN, vk_down, ord("S"));

input_handle_gamepad_axis(0, InputAction.LEFT, global.input_gamepad, gp_axislh, -0.5);
input_handle_keyboard(0, InputAction.LEFT,  vk_left,  ord("A"));

input_handle_gamepad_axis(0, InputAction.RIGHT, global.input_gamepad, gp_axislh, 0.5);
input_handle_keyboard(0, InputAction.RIGHT, vk_right, ord("D"));

input_handle_gamepad_button(0, InputAction.ACTION, global.input_gamepad, gp_face1);
input_handle_keyboard(0, InputAction.ACTION, vk_space);

input_handle_gamepad_button(0, InputAction.DISCHARGE, global.input_gamepad, gp_face3);
input_handle_keyboard(0, InputAction.DISCHARGE, ord("E"));
		
input_handle_gamepad_button(0, InputAction.PAUSE, global.input_gamepad, gp_start); 
input_handle_keyboard(0, InputAction.PAUSE, vk_escape);	

input_step_end(repeat_delay, longpress_delay, doubletap_delay);
