if (input_check_pressed(0, InputAction.PAUSE))
{
	// Pause Game	
	event_user(0);
	
	// Take screenshot
	game_pause_screen = sprite_create_from_surface(application_surface, 0, 0, window_get_width(), window_get_height(), false, false, 0, 0);
}

if (game_paused)
{
	// Restart
	if (input_check_analogue(0, InputAction.DISCHARGE))
	{
		room_restart();
		game_paused = false;
	}
}

// Restart game at the end
if (can_restart)
{
	if (input_check_analogue(0, InputAction.ACTION))
		alarm_set(0, 60);
}
