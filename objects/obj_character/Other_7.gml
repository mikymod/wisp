switch (sprite_index)
{
	case spr_powerup:
	case spr_powerdown:
	{
		// Power Level
		switch (power_level)
		{
			case PowerLevel.Normal:
			{
				cur_jump_speed = jump_speed;
				cur_scale = normal_scale;
				break;
			}
			case PowerLevel.Agile:
			{
				cur_jump_speed = agile_jump_speed;
				cur_scale = agile_scale;
				break;
			}
			case PowerLevel.Strength:
			{
				cur_jump_speed = strenth_jump_speed;
				cur_scale = strength_scale;
				break;
			}
		}
		
		state_switch_previous();
		
		break;
	}
}
