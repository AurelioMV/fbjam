if(!paused && !gameOver && tutorialMode) {
	// Update delta time
	dt = delta_time / 1000000;

	if (tutorialHint) return;

	if (instance_exists(activeCard)) {
	
		switch(tutorialStep) {
			case 0:
				var yy = colS - colH * 3;
				if(activeCard.y < yy) {
					//touchActive = false;
					activeCard.y += cardSpeed * dt;	
					checked = false;
				}
				else if(activeCard.row == 2 && activeCard.shapeBottom != 1){
					touchActive = false;
					activeCard.y += cardSpeed * dt;
					CheckAttach();
					checked = true;
				}
				break;
			case 1:
				var yy = colS - colH * 3;
				if(activeCard.y < yy) {
					//touchActive = false;
					activeCard.y += cardSpeed * dt;
					checked = false;	
				}
				else if(activeCard.row == 2 && activeCard.shapeBottom == 1){
					touchActive = false;
					activeCard.y += cardSpeed * dt;
					CheckAttach();
					checked = true;
				}
				break;
			case 2:
				var yy = colS - colH * 4;
				if(activeCard.y < yy) {
					//touchActive = false;
					activeCard.y += cardSpeed * dt;	
					checked = false;
				}
				else if(activeCard.row == 2 && activeCard.colorBottom == 0) {
					touchActive = false;
					activeCard.y += cardSpeed * dt;
					CheckAttach();
					checked = true;
				}
				break;
			case 3:
				var yy = colS - colH * 4;
				if(activeCard.y < yy) {
					//touchActive = false;
					activeCard.y += cardSpeed * dt;	
					checked = false;
				}
				else if(activeCard.shapeBottom == 1 && activeCard.row == 1){
					touchActive = false;
					activeCard.y += cardSpeed * dt;
					CheckAttach();
					checked = true;
				}
				break;
			case 4:
				var yy = colS - colH * 4;
				if(activeCard.y < yy) {
					//touchActive = false;
					activeCard.y += cardSpeed * dt;	
					checked = false;
				}
				else if(activeCard.row == 1 && cardSpeed == fastSpeed){
					touchActive = false;
					activeCard.y += cardSpeed * dt;
					CheckAttach();
					checked = true;
				}
				break;
			case 5:
				var yy = colS - colH * 5;
				if(activeCard.y < yy) {
					//touchActive = false;
					activeCard.y += cardSpeed * dt;	
					checked = false;
				}
				else if(activeCard.row == 1 && activeCard.shapeBottom == 1){
					touchActive = false;
					activeCard.y += cardSpeed * dt;
					CheckAttach();
					checked = true;
				}
				break;
			case 6: case 7:
				CheckAttach();
				activeCard.y += cardSpeed * dt;
				break;
		}
	}
}