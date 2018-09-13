var touchX = mouse_x;
var touchY = mouse_y;

show_debug_message(string(touchX) + ", " + string(touchY));


//Play
if(point_in_rectangle(touchX, touchY, 200, 472, 535, 793)) {
	//Load GameRoom
	room_goto(GameRoom);
}
else if(point_in_rectangle(touchX, touchY, 217, 863, 511, 963)) { //Tutorial
	//show_message("Tutorial");
}
else if(point_in_rectangle(touchX, touchY, 99, 1071, 238, 1203)) { //Toggle Mute
	muted = !muted;
	if (muted) audio_master_gain(0);
	else audio_master_gain(1);
}
else if(point_in_rectangle(touchX, touchY, 525, 1069, 657, 1193)) { //Share
	//show_message("Share");
}

