/// @description Insert description here
// You can write your code in this editor

// Init instant games
if (os_browser) {
	FBInstantGames_Initialise();
	FBInstantGames_SetLoadProgress(100);
	FBInstantGames_StartGame("OnGameStart", "OnGamePause");
}