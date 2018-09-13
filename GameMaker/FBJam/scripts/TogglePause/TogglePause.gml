///@function TogglePause(pause, mute)
///@param pause
///@param mute
var pause = argument0;
var mute = argument1;

//No effect if already paused or playing
if(paused != pause) {
	paused = pause;
	
	//Enable or disable UI
}

MuteGame(mute);
