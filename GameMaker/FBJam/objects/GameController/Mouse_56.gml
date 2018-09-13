/// @description Insert description here
// You can write your code in this editor
var xx = mouse_x - touchX;
var yy = mouse_y - touchY;

if (abs(xx) > abs(yy)) {
	// Horizontal
	if (xx > 0) {
		MoveCard(1);
	} else {
		MoveCard(-1);
	}
} else {
	//Swipe down, fall faster
	if(yy > 0) {
		RushCard();
	}
	else {
		FlipCard();
	}
}