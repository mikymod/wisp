
// Save all buttons
buttons = ds_list_create();
with (obj_menu_button)
{
	ds_list_add(other.buttons, id);
}

cur_button_index = 0;
prev_button_index = -1;
max_button_index = ds_list_size(buttons) - 1;

