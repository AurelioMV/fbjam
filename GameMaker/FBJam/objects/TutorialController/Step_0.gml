if(!paused && !gameOver) {
	// Update delta time
	dt = delta_time / 1000000;

	if (instance_exists(activeCard)) {
	
		switch(tutorialStep) {
			case 0:
				var yy = colS - colH * 3;
				if(activeCard.y < yy) {
					touchActive = false;
					activeCard.y += cardSpeed * dt;	
				}
				else if(activeCard.row == 2){
					touchActive = false;
					activeCard.y += cardSpeed * dt;
					CheckAttach();
				}
				break;
			case 1:
				var yy = colS - colH * 3;
				if(activeCard.y < yy) {
					touchActive = false;
					activeCard.y += cardSpeed * dt;	
				}
				else if(activeCard.row == 2){
					touchActive = false;
					activeCard.y += cardSpeed * dt;
					CheckAttach();
				}
				break;
			case 2:
				var yy = colS - colH * 3;
				if(activeCard.y < yy) {
					touchActive = false;
					activeCard.y += cardSpeed * dt;	
				}
				else if(activeCard.row == 2){
					touchActive = false;
					activeCard.y += cardSpeed * dt;
					CheckAttach();
				}
				break;
		}
	}
}