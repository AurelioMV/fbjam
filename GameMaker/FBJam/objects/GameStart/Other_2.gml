/// @description Insert description here
// You can write your code in this editor
globalvar highscore;
highscore = 0;

// Init instant games
FBInstantGames_Initialise();
FBInstantGames_SetLoadProgress(100);
FBInstantGames_StartGame("OnGameStart", "OnGamePause");

// Optimize
gml_release_mode(true);
application_surface_enable(false);