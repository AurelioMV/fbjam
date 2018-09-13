///@function MuteGame(mute)
///@param mute
var mute = argument0;

if(muted != mute) {
	//muted = mute; Seria melhor escolher se vai alterar ou nao a opcao
	//Se estiver mutando so para atender chamada, por exemplo
	
	if(muted)
		audio_stop_sound(sfxTheme);
	else
		audio_play_sound(sfxTheme, 1, true);
}