// Move horizontally
reminder_x += vel_x;
var _move_x = round(reminder_x);	
reminder_x -= _move_x;

repeat (abs(_move_x))
{   
	if (!place_meeting(x + sign(_move_x), y, obj_solid))
		x += sign(_move_x);
	else
		vel_x = 0;
}

// Move vertically
reminder_y += vel_y;
var _move_y = round(reminder_y);
reminder_y -= _move_y;

repeat (abs(_move_y))
{   
	if (!place_meeting(x, y + sign(_move_y), obj_solid))
	    y += sign(_move_y);
	else
		vel_y = 0;
}

// Play sound
if (vel_x != 0)
{
	if (!audio_is_playing(snd_carry_box))
		audio_play_sound(snd_carry_box, 2, false);
}