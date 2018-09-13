/// @description Insert description here
// You can write your code in this editor
globalvar highscore;
globalvar muted;
highscore = 0;
muted = false;

// Init instant games
FBInstantGames_Initialise();
FBInstantGames_SetLoadProgress(100);
FBInstantGames_StartGame("gmcallback_gamestart", "gmcallback_pause");

// Optimize
gml_release_mode(true);
application_surface_enable(false);