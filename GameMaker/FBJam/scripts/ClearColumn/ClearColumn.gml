/// @function ClearColumn(col)
/// @param col
var col = argument0;

var len = colL[| col]; //How many cards are in the column

//Destroy all cards in the column
for(var i = 0; i < len; i++) {
	instance_destroy(gridMap[# col, i]);
}

//10 + bonus per card
score += 100 + 50 * len;

audio_play_sound(sfxCombo, 1, 0);

colL[| col] = 0;