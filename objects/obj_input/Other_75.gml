if (async_load[? "event_type"] == "gamepad discovered")
{   
    global.input_gamepad = async_load[? "pad_index"];
    input_clear();
}