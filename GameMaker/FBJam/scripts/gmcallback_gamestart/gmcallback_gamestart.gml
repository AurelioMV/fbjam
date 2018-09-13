playerName = FBInstantGames_GetPlayerName();
playerPic = sprite_add(FBInstantGames_GetPlayerPic(), 1, false, false, 0, 0);

FBInstantGames_QueryLeaderboard("score", 7, 0, "gmcallback_onleaderboard");