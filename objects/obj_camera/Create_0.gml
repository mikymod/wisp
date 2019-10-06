// Vars
win_width   = view_width * window_scale;
win_height  = view_height * window_scale;

target_x = 0;       // px
target_y = 0;       // px

shake = false;

confiner = noone;

// Set window and surface size
window_set_size(win_width, win_height);
alarm[0] = 1 // window_center();
surface_resize(application_surface, win_width, win_height);
