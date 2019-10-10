if (game_paused)
{
	if (input_check_analogue(0, InputAction.DISCHARGE))
	{
		room_restart();
		game_paused = false;
	}
}
if (can_restart)
{
	if (input_check_analogue(0, InputAction.ACTION))
		alarm_set(0, 60);
}
