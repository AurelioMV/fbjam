/// @description Insert description here
// You can write your code in this editor
globalvar playerName, playerPic, playerLeaderboard, leaderboardEntries;
playerName = FBInstantGames_GetPlayerName();
playerPic = sprite_add(FBInstantGames_GetPlayerPic(), 1, false, false, 0, 0);
playerLeaderboard = ds_grid_create(10, 3);
leaderboardEntries = 0;

FBInstantGames_QueryLeaderboard("Score Leaderboards", 10, 0, "OnLeaderboardReceived");

//OnLeaderboardReceived();