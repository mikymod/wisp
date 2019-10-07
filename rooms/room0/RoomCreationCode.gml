audio_stop_all();
global.music_full_loop = audio_play_sound(snd_full_loop, 1, true);
global.music_theme_3_5 = audio_play_sound(snd_theme_3_5, 1, true);
audio_sound_gain(global.music_theme_3_5, 0, 0);
global.music_theme_6_8 = audio_play_sound(snd_theme_6_8, 1, true);
audio_sound_gain(global.music_theme_6_8, 0, 0);
