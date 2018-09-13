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
			instance_destroy(activeCard);
			// Create next
			audio_play_sound(sfxConnect, 1, 0);
			CreateCard(1);	
		}
	} 
	else if ((len == 0 && row == activeCard.shapeBottom) || 
			(len != 0 && len < gridH && (prev.shapeTop == activeCard.shapeBottom || prev.colorTop == activeCard.colorBottom))) {
				
		if (len > 0) //Col not empty 
			score += 20;
		else
			score += 5;
				
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
		show_debug_message("Game Over");	
		room_restart();
	}
}