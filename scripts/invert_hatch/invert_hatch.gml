for (i = 0; i < ds_list_size(hatches); i++)
{
	var hatch = hatches[|i];
	instance_activate_object(hatch);
	with (hatch)
	{
		if (active)
		{
			instance_deactivate_object(id);
			show_debug_message("Deactivate " + string(id));
		}
		else
		{
			instance_activate_object(id);
			show_debug_message("Activate " + string(id));
		}
		
		active = !active;
	}
}

