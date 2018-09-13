///@function TogglePause(pause)
///@param pause
var pause = argument0;

//No effect if already paused or playing
if(paused != pause) {
	paused = pause;
	
	if(paused)
		MuteGame(true); //Force mute
	else
		MuteGame(muted); //Return to default value
	
	//Enable or disable UI
}
