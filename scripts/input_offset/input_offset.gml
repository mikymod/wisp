/// @function input_offset
/// @description Calculate offset
/// @arg player
/// @arg action
var player = argument0;
var action = argument1;
return player * InputAction._SIZE * InputState._SIZE + action * InputState._SIZE;