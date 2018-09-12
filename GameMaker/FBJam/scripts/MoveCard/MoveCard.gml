/// @function MoveCard(dir)
/// @param dir
var dir = argument0;

if (dir > 0 && activeCard.row < gridW - 1) {
	activeCard.row++;
	activeCard.x = rowsPos[| activeCard.row];
	audio_play_sound(sfxMove, 1, 0);
	return true;
}

if (dir < 0 && activeCard.row > 0) {
	activeCard.row--;
	activeCard.x = rowsPos[| activeCard.row];
	audio_play_sound(sfxMove, 1, 0);
	return true;
}

return false;