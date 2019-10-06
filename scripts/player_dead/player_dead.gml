if (state_is_new())
{
	instance_deactivate_object(obj_character);
	
//	// Transition
//	with (instance_create_layer(0, 0, "transitions", obj_transition))
//	{
//		type = TransitionType.RESTART;
//		sprite = spr_double_vertical;
//		length = 1;		
//		active = true;
//	}
	room_restart();

}
