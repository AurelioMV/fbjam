///@function MuteGame(mute)
///@param mute
var mute = argument0;

if(mute){
	audio_stop_sound(sfxTheme);
	audio_master_gain(0);
}
else {
	audio_play_sound(sfxTheme, 1, true);
	audio_master_gain(1);
}