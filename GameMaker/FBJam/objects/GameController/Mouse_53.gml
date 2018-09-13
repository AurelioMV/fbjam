/// @description Insert description here
// You can write your code in this editor
touchX = mouse_x;
touchY = mouse_y;

if(!paused)
	touchActive = true;

show_debug_message(string(touchX) + ", " + string(touchY));


//Pause
if (!paused && !gameOver){
	if(point_in_rectangle(touchX, touchY, 25, 5, 120, 100)) {
		touchActive = false;
		TogglePause(true);
	}
}
else if(paused && !gameOver){
	if(point_in_rectangle(touchX, touchY, 226, 786, 493, 1036)) { //Resume
		TogglePause(false);
	}
	else if(point_in_rectangle(touchX, touchY, 68, 472, 205, 600)) { //Main Menu
		//Go Main Menu
		room_goto(MainMenu);
	}
	else if(point_in_rectangle(touchX, touchY, 292, 472, 429, 600)) { //Restart
		room_restart();
	}
	else if(point_in_rectangle(touchX, touchY, 521, 472, 658, 600)) { //Toggle Mute
		muted = !muted;
		if (muted) audio_master_gain(0);
		else audio_master_gain(1);
		//TogglePause will handle playing or not the music
	}
}
else if(gameOver) {
	if(point_in_rectangle(touchX, touchY, 184, 545, 321, 677)) { //Main Menu
		room_goto(MainMenu);
	}
	else if(point_in_rectangle(touchX, touchY, 412, 545, 545, 677)) { //Restart
		room_restart();
	}
	else if(point_in_rectangle(touchX, touchY, 224, 830, 502, 1087)) { //ShareHighscore
		HighscoreShare();
	}
}
