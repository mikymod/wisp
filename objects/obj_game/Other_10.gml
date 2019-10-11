/// @description Pause/Resume game

game_paused = !game_paused;

if (game_paused)
	game_pause();
else
{
	if (sprite_exists(game_pause_screen))
		sprite_delete(game_pause_screen);
	
	game_resume();
}