// Skip surface resize if window's dimension is [0,0].
// It happens in 1+ frame after window resize
if (window_get_width() == 0 || window_get_height() == 0)
	return;

// If windows change size, resize surface
if (win_width != window_get_width()) || (win_height != window_get_height())
{
	win_width  = window_get_width();
	win_height = window_get_height();
	alarm[0] = 1 // window_center();
	surface_resize(application_surface, win_width, win_height);
}