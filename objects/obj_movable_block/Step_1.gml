prev_on_ground = on_ground;
on_ground = place_meeting(x, y + 1, obj_solid);

if (on_ground != prev_on_ground)
{
	audio_play_sound(snd_fall_box, 2, false);
}
