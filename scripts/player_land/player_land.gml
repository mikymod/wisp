if (state_is_new())
{
	sprite_index = spr_land_blue;
}

if (image_index + image_speed >= image_number)
{
	state_switch(PlayerState.Idle);
}
 