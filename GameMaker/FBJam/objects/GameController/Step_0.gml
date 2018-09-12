/// @description Insert description here
// You can write your code in this editor

// Update delta time
dt = delta_time / 1000000;

if (instance_exists(activeCard)) {
	// Move cards down
	activeCard.y += cardSpeed * dt;
	
	// Attach
	var row = activeCard.row;
	var len = colL[| row];
	var yy = colS - colH * len;
	audio_play_sound(sfxConnect, 1, 0);
	if (activeCard.y >= yy) {
		// Check compatible
		var prev = gridMap[# row, len - 1];
			
		if (len != 0 && prev.shapeTop == activeCard.shapeBottom && prev.colorTop == activeCard.colorBottom) {
			// Combo
			score += 20;
			ClearColumn(row);
			instance_destroy(activeCard);
			// Create next
			CreateCard(1);
		} 
		else {
			if (len < gridH && (len == 0 || prev.shapeTop == activeCard.shapeBottom || prev.colorTop == activeCard.colorBottom)) {
					
				if(len > 0) //Score just on match
					score += 1;
					
				// Assign
				gridMap[# row, len] = activeCard;
				activeCard.y = yy;
				colL[| row]++;
				
				
				
				// Create next
				CreateCard(1);
			} 
			else {
				// Game Over
				show_debug_message("Game Over");	
				room_restart();
			}
		}
	}
}