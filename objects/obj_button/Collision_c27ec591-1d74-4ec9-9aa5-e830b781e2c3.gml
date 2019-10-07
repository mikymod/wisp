/// @description Insert description here
// You can write your code in this editor
if (active_anim) return;

// Start animation
active_anim = true;
image_speed = 1;

// Play sound
audio_play_sound(snd_skull, 2, false);

invert_hatch();
