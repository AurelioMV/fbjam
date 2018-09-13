///@function CheckComboFull()
///@description Check if all lines and columns are placed

if(currentPlacedCards == maxCards) {
	score += 1000;
	
	//Clear all cards
	for(var w = 0; w < gridW; w++) {
		for(var h = 0; h < gridH; h++) {
			gridMap[# w, h].poof = 1;
		}
		
		colL[| w] = 0;
	}
	
	currentPlacedCards = 0;
	
	return true;
}

return false;