///@function MuteGame(mute)
///@param mute
var mute = argument0;

if(mute)
	audio_stop_sound(sfxTheme);
else
	audio_play_sound(sfxTheme, 1, true);