// Save all hatches
hatches = ds_list_create();
with (obj_hatch)
{
	ds_list_add(other.hatches, id);
}

show_debug_message("Hatches size: " + string(ds_list_size(hatches)));