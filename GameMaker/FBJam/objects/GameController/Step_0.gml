/// @description Insert description here
// You can write your code in this editor

if(!paused && !gameOver && !tutorialMode) {
	// Update delta time
	dt = delta_time / 1000000;

	if (instance_exists(activeCard)) {
		// Move cards down
		activeCard.y += cardSpeed * dt;
	
		// Attach
		CheckAttach();
	}
}
