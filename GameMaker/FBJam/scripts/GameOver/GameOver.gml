// Stop music
MuteGame(false);

// Submit score
if (score > highscore){
	FBInstantGames_SetScore(score, "Score Leaderboards", 0, "OnScoreSubmitted");
	highscore = score;
}