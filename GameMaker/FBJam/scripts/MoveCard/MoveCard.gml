/// @function MoveCard(dir)
/// @param dir
var dir = argument0;

var newRow = -1;

//Check if there is a column and asign it
if(dir > 0 && activeCard.row < gridW - 1) {
	newRow = activeCard.row + 1;
}
else if(dir < 0 && activeCard.row > 0) {
	newRow = activeCard.row - 1;
}

if(newRow != -1) {
	var len = colL[| newRow];
	var yy = colS - colH * len;
	
	//If card is higher than column height
	if(activeCard.y < yy) {
		activeCard.row = newRow;
		
		activeCard.x = rowsPos[| activeCard.row];
		audio_play_sound(sfxMove, 1, 0);
		return true;
	}	
}

audio_play_sound(sfxWrongMove, 1, 0);
return false;
	