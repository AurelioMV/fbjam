/// @function ClearColumn(col)
/// @param col
var col = argument0;

var len = colL[| col]; //How many cards are in the column

//Destroy all cards in the column
for(var i = 0; i < len; i++) {
	instance_destroy(gridMap[# col, i]);
}

colL[| col] = 0;