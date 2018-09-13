if(!displayLeaderboard) {	
	draw_sprite(sprMainMenu, 0, 360, 0);
	
	
	if (sprite_exists(playerPic)){
		draw_sprite_stretched(playerPic, 0, 74, 145, 195, 195);
	}

	if (playerName != ""){
		draw_set_font(fontDefault);
		draw_text_transformed(290, 210, playerName, 1.1, 1.1, 0);
	}
	
	/*
	draw_sprite_stretched(sprAvatarTest, 0, 74, 145, 195, 195);

	draw_set_font(fontDefault);
	draw_text_transformed(290, 210, "Bruno", 1.1, 1.1, 0);
	*/
}
else {
	draw_sprite(sprMenuLeaderboard, 0, 360, 0);
	
	
	if (leaderboardEntries > 0){
		for (var i = 0; i < leaderboardEntries; i++){
			var name = playerLeaderboard[# i, 0];
			var pic = sprite_add(playerLeaderboard[# i, 1], 1, false, false, 0, 0);
			var high = playerLeaderboard[# i, 2];
	
			draw_set_font(fontDefault);
			draw_sprite_stretched(pic, 0, 75, 190 + 185 * i, 125, 125);
			draw_text(220, 225 + 185 * i, name + ": " + string(high));	
		}
	}
	
	/*
	for(var i = 0; i < 6; i++) {
		
		draw_set_font(fontDefault);
		draw_sprite_stretched(sprAvatarTest, 0, 75, 190 + 185 * i, 125, 125);
		draw_text(220, 225 + 185 * i, "Bruno" + ": " + string(100 + i));	
	}
	*/
}