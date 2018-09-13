var str = argument0;

for (var i = 0; i < 10; i++){
	var rank = 0;
	var name = "";
	var picture = "";
	var high = 0;
	
	for (var j = 0; j < 4; j++){
		var pos = string_pos(":!", str);
		if (pos <= 0) break;
		
		var result = string_copy(str, 0, pos - 1);
		str = string_copy(str, pos + 2, 99999);
		
		switch (j) {
			case 0:
				rank = real(result);
				break;
			case 1:
				name = result;
				break;
			case 2:
				picture = result;
				break;	
			case 3:
				high = real(result);
				break;			
		}
	}
	
	playerLeaderboard[# rank - 1, 0] = name;
	playerLeaderboard[# rank - 1, 1] = sprite_add(picture, 1, false, false, 0, 0);
	playerLeaderboard[# rank - 1, 2] = high;
	leaderboardEntries++;
	
	var pos = string_pos(":!", str);
	if (pos <= 0) break;
}