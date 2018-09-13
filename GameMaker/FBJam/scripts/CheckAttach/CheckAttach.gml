///@function CheckAttach()
var row = activeCard.row;
var len = colL[| row];
var yy = colS - colH * len;

if (activeCard.y >= yy) {
	// Check compatible
	var prev = gridMap[# row, len - 1];
			
	if (len != 0 && prev.shapeTop == activeCard.shapeBottom && prev.colorTop == activeCard.colorBottom) {
			
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
	else if ((len == 0 && row == activeCard.shapeBottom) || 
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