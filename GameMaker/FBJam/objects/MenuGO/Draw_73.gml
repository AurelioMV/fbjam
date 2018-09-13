if(displayLeaderboard)  {
	draw_sprite(sprMenuLeaderboard, 0, 360, 0);
	
	
	if (leaderboardEntries > 0){
		for (var i = 0; i < leaderboardEntries; i++){
			var name = playerLeaderboard[# i, 0];
			//var pic = sprite_add(playerLeaderboard[# i, 1], 1, false, false, 0, 0);
			var high = playerLeaderboard[# i, 2];
	
			draw_set_font(fontDefault);
			draw_set_halign(fa_left);
			draw_set_color(c_white);
			draw_sprite_stretched(playerLeaderboard[# i, 1], 0, 75, 190 + 185 * i, 125, 125);
			draw_text(220, 225 + 185 * i, name + ": " + string(high));	
		}
	}
}