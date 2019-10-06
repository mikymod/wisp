if (_state_next != _state_curr)
{
    _state_prev = _state_curr;
    _state_curr = _state_next;
    _state_timer = 0;
}
else
{
    _state_timer++;
}

if(ds_map_exists(_state_map, _state_curr))
    script_execute(_state_map[? _state_curr]);
else
    state_switch(_state_default); // Switch to default state