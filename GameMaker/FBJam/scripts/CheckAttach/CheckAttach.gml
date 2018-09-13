///@function CheckAttach()
var row = activeCard.row;
var len = colL[| row];
var yy = colS - colH * len;

if (activeCard.y >= yy) {
	// Check compatible
	var prev = gridMap[# row, len - 1];
			
	if (activeCard.colorBottom == 3 && activeCard.shapeBottom == 1){
		// Bomb!	
		// Clear all cards
		score += currentPlacedCards * 10;
		for(var w = 0; w < gridW; w++) {
			for(var h = 0; h < colL[| w]; h++) {
				gridMap[# w, h].poof = 1;
			}
		
			colL[| w] = 0;
		}
		currentPlacedCards = 0;
		activeCard.poof = 1;
		CreateCard(1);	
		
		audio_play_sound(sfxBomb,1,0);
	}
	else if (len != 0 && prev.shapeTop == activeCard.shapeBottom && prev.colorTop == activeCard.colorBottom) {
		// Combo
		currentPlacedCards++;
						
		if(!CheckComboFull()) {
			// Combo
			ClearColumn(row);
			activeCard.poof = 1;
			// Create next
			audio_play_sound(sfxConnect, 1, 0);
			CreateCard(1);	
		}
	} 
	else if ((activeCard.colorBottom == 3 && activeCard.shapeBottom == 0) ||
			(len != 0 && prev.colorTop == 3 && prev.shapeTop == 0) ||
			(len == 0 && row == activeCard.shapeBottom) || 
			(len != 0 && len < gridH && (prev.shapeTop == activeCard.shapeBottom || prev.colorTop == activeCard.colorBottom))) {
				
		if (len > 0) {//Col not empty 
			score += 20;
			activeCard.attaching = 1;
		}
		else {
			score += 5;
			activeCard.attground = 1;
		}
				
		currentPlacedCards++;
				
		// Assign
		gridMap[# row, len] = activeCard;
		activeCard.y = yy;
		colL[| row]++;
				
		CheckComboFull();
				
		// Create next
		audio_play_sound(sfxConnect, 1, 0);
		CreateCard(1);
	} 
	else {
		// Game Over
		GameOver();
	}
}