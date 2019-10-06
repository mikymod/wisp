/// @function state_machine_init
/// @description Add state machine variables to an object. Must be called in the object create event

_state_curr    = undefined;         // Current key 
_state_next    = undefined;         // Next key
_state_prev    = undefined;         // Previous key
_state_default = undefined;         // Default key
_state_timer   = 0;                 // Step
_state_map     = ds_map_create();
_state_stack   = ds_stack_create();

state_var[0]   = 0;                 // Useful for storing variables specific to a specific state.