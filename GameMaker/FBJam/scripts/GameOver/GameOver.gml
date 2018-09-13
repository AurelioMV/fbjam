gameOver = true;

// Stop music
MuteGame(true);


// Submit score
if (score > highscore){
	FBInstantGames_SetScore(score, "score", "{}", "OnScoreSubmitted");
	highscore = score;
}

instance_create_depth(0, 0, -100, MenuGO);