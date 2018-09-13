// Stop music
MuteGame(true);

// Submit score
if (score > highscore){
	FBInstantGames_SetScore(score, "Score Leaderboards", 0, "OnScoreSubmitted");
	highscore = score;
}

//Apresentar menu de game over
room_restart();