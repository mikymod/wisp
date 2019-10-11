// Invert hatch
for (i = 0; i < ds_list_size(hatches); i++)
{
	var hatch = hatches[|i];
	game_instance_activate(hatch);
	with (hatch)
	{
		if (active)
		{
			game_instance_deactivate(id);
			show_debug_message("Deactivate " + string(id));
		}
		else
		{
			game_instance_activate(id);
			show_debug_message("Activate " + string(id));
		}
		
		active = !active;
	}
}

// Play sound
audio_play_sound(snd_hatch_invert, 1, false);


