/// @description Insert description here
// You can write your code in this editor
var xx = event_data[?"diffX"];
var yy = event_data[?"diffY"];

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
		cardSpeed = fastSpeed;
	}
	else {
		FlipCard();
	}
		
}