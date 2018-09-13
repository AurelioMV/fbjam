/// @description Insert description here
// You can write your code in this editor

// Init instant games
FBInstantGames_Initialise();
FBInstantGames_SetLoadProgress(100);
FBInstantGames_StartGame("OnGameStart", "OnGamePause");

// Optimize
gml_release_mode(true);
application_surface_enable(false);