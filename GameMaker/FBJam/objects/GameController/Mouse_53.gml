/// @description Insert description here
// You can write your code in this editor
touchX = mouse_x;
touchY = mouse_y;

if(touchX < 120 && touchY < 120) {
	touchActive = false;
	TogglePause(true);
}
else {
	touchActive = true;
	TogglePause(false);
}