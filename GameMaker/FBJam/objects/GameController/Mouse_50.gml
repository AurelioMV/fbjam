/// @description Insert description here
// You can write your code in this editor
if (touchActive){
	var xx = mouse_x - touchX;
	var yy = mouse_y - touchY;

	if (abs(xx) > abs(yy)) {
		if (abs(xx) > 50) {
			// Horizontal
			if (xx > 0) {
				MoveCard(1);
			} else {
				MoveCard(-1);
			}
			touchActive = false;
		}
	} else {
		if (abs(yy) > 50) {
			//Swipe down, fall faster
			if(yy > 0) {
				RushCard();
			}
			else {
				FlipCard();
			}
			touchActive = false;
		}
	}
}