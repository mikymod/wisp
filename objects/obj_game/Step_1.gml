if (input_check_pressed(0, InputAction.PAUSE))
{
	// Pause Game
	game_paused = !game_paused;
	
	// Take screenshot
	game_pause_screen = sprite_create_from_surface(application_surface, 0, 0, window_get_width(), window_get_height(), false, false, 0, 0);
}
	
if (game_paused)
{
	// Deactivate all objects
	instance_deactivate_all(true);
	
	// Reenable systems
	instance_activate_object(obj_input);
	instance_activate_object(obj_camera);
}
else
{
	if (sprite_exists(game_pause_screen))
		sprite_delete(game_pause_screen);
		
	instance_activate_all();
}