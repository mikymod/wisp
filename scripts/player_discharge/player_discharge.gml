if (!discharge_avail) return;
if (power_level == PowerLevel.Normal) return;

power_level--;
instance_activate_object(wisps_list[power_level]);

discharge_avail = false;
alarm_set(1, discharge_cd);