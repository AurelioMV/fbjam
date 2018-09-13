gameOver = true;

// Stop music
MuteGame(true);

// Submit score
if (score > highscore){
	FBInstantGames_SetScore(score, "score", "{}", "OnScoreSubmitted");
	highscore = score;
}

//Apresentar menu de game over
//room_restart();