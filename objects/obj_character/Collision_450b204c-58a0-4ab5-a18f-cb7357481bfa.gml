// Disable power up
game_instance_deactivate(other.id);

// Save reference for reactivation
wisps_list[power_level] = other.id;
power_level++;
power_level = clamp(power_level, 0, PowerLevel.LENGTH-1);

// Change state
state_switch(PlayerState.PowerUp, true);