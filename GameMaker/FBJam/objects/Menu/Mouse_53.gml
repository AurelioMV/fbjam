var xx = mouse_x;
var yy = mouse_y;

show_debug_message(string(xx) + ", " + string(yy));

if(!displayLeaderboard) {
	//Play
	if(point_in_rectangle(xx, yy, 200, 472, 535, 793)) {
		//Load GameRoom
		room_goto(GameRoom);
	}
	else if(point_in_rectangle(xx, yy, 217, 863, 511, 963)) { //Tutorial
		//show_message("Tutorial");
	}
	else if(point_in_rectangle(xx, yy, 99, 1071, 238, 1203)) { //Toggle Mute
		muted = !muted;
		if (muted) audio_master_gain(0);
		else audio_master_gain(1);
	}
	else if(point_in_rectangle(xx, yy, 525, 1069, 657, 1193)) { //Leaderboard
		//SocialShare();
		displayLeaderboard = true;
	}	
}
else if(displayLeaderboard) {
	//Back
	if(point_in_rectangle(xx, yy, 7, 31, 120, 135)) {
		displayLeaderboard = false;
	}
}


