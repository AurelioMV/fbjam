/// @description Insert description here
// You can write your code in this editor
if (sprite_exists(playerPic)){
	draw_sprite(playerPic, 0, 128, 128);
}

if (playerName != ""){
	draw_set_font(fontDefault);
	draw_text(320, 400, playerName);
}

if (leaderboardEntries > 0){
	for (var i = 0; i < leaderboardEntries; i++){
		var name = playerLeaderboard[# i, 0];
		var high = playerLeaderboard[# i, 2];
	
		draw_set_font(fontDefault);
		draw_text(320, 400 + 100 * i, name + ": " + string(high));	
	}
}