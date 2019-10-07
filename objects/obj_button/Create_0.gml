// Save all hatches
hatches = ds_list_create();
with (obj_hatch)
{
	ds_list_add(other.hatches, id);
}

// Set image's speed to 0
image_speed = 0;

active_anim = false;
