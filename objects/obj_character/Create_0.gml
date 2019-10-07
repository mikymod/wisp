// Input
input_disabled  = false;
key_left        = 0;
key_right       = 0;
key_up          = 0;
key_down        = 0;
key_action      = 0;
key_action_held = 0;
key_powerdown   = 0;

// Movement
vel_x = 0;
vel_y = 0;
cur_jump_speed = jump_speed;

// Subpixel movement
reminder_x = 0;
reminder_y = 0;

// Orientation
cur_scale = normal_scale;
facing = 1;

// Collisions
on_ground       = place_meeting(x, y + 1, obj_solid);
collision_left  = place_meeting(x - 1, y, obj_solid);
collision_right = place_meeting(x + 1, y, obj_solid);
collision_top   = place_meeting(x, y - 1, obj_solid);
ground_target   = noone;
wall_target     = noone;

// Jump juice
_jump_buffer_time = 0;
_jump_grace_avail = false;

// States
enum PlayerState                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
{
	Idle,
	Run,
	Jump,
	Fall,
	Land,
	Dead,
	PowerUp,
	PowerDown,
	LENGTH
}
state_machine_init();
state_create(PlayerState.Idle,  player_idle);
state_create(PlayerState.Run,   player_run);
state_create(PlayerState.Jump,  player_jump);
state_create(PlayerState.Fall,  player_fall);
state_create(PlayerState.Land, player_land);
state_create(PlayerState.Dead,  player_dead);
state_create(PlayerState.PowerUp, player_powerup);
state_create(PlayerState.PowerDown, player_powerdown);
state_set_default(PlayerState.Idle);

// Power Levels
enum PowerLevel
{
	Normal,
	Agile,
	Strength,
	LENGTH
}

power_level = PowerLevel.Normal;
wisps_list = array_create(PowerLevel.LENGTH);
powerdown_avail = true;
discharge_cd = 60;
