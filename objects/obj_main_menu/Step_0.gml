// Input
key_left    = input_check_analogue(0, InputAction.LEFT);
key_right   = input_check_analogue(0, InputAction.RIGHT);
key_action  = input_check_pressed(0, InputAction.ACTION);

// Select current button
if (key_left)
{
	cur_button_index--;
	if (!audio_is_playing(snd_button_select))
		audio_play_sound(snd_button_select, 2, false);
}
else if (key_right)
{
	cur_button_index++;
	if (!audio_is_playing(snd_button_select))
		audio_play_sound(snd_button_select, 2, false);
}
cur_button_index = clamp(cur_button_index, 0, max_button_index);
with (obj_menu_button)
{
	if (id == other.buttons[|other.cur_button_index])
		image_index = 0;
	else
		image_index = 1;
}

// Activate button
if (key_action)
{
	with (buttons[|cur_button_index])
	{
		// Exec logic
		if (script != noone)
			script_execute(script);
		
		// Play sound
		audio_play_sound(snd_button_play, 2, false);
	}
}