// Save state
var halign = draw_get_halign();

if (game_paused)
{
	draw_set_halign(fa_center);
	draw_sprite_ext(game_pause_screen, 0, 0, 0, 1, 1, 0, c_white, 1);
	draw_text(window_get_width() * 0.5, window_get_height() * 0.5 , "Paused");
	draw_text(window_get_width() * 0.5, window_get_height() * 0.6 , "Press X (E) to restart");
}

// Restore state
draw_set_halign(halign);