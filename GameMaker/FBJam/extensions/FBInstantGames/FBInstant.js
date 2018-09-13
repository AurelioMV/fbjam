

function FBInstantGames_Initialise()
{
	FBInstant.initializeAsync()
	  .then(function() {        
		 // Start loading game assets here
		 console.log("FBInstant initializeAsync completed");
	  });
	
}

function FBInstantGames_StartGame(onstartgamecompletecallback,onpausecallback)
{
	FBInstant.startGameAsync()
	  .then(function() {
		// Retrieving context and player information can only be done
		// once startGameAsync() resolves
		var contextId = FBInstant.context.getID();
		var contextType = FBInstant.context.getType();

		var playerName = FBInstant.player.getName();
		var playerPic = FBInstant.player.getPhoto();
		var playerId = FBInstant.player.getID();

		console.log("contextId=" + contextId + " of type " + contextType);
		
		
		console.log("playerName=" + playerName +" pic:" + playerPic + " playerId:" + playerId);
		
		if(onstartgamecompletecallback!="")
			eval("gml_Script_"+onstartgamecompletecallback+"(null,null)");
		// Once startGameAsync() resolves it also means the loading view has 
		// been removed and the user can see the game viewport

	//    game.start();
	  });
	  
	 FBInstant.onPause(function()
		{
			console.log("FBInstant onPause triggered"); //Send an async event?
			if(onpausecallback!="")
				eval("gml_Script_"+onpausecallback+"(null,null)");
		}
	);
}

function FBInstantGames_SetLoadProgress(percent)
{
	FBInstant.setLoadingProgress(percent);
}

function FBInstantGames_GetContextID()
{
	return FBInstant.context.getID();
}

function FBInstantGames_GetContextType()
{
	return FBInstant.context.getType();
}

function FBInstantGames_GetPlayerName()
{
	return FBInstant.player.getName();
}
function FBInstantGames_GetPlayerPic()
{
	return FBInstant.player.getPhoto();
}
function FBInstantGames_GetPlayerID()
{
	return FBInstant.player.getID();
}
function FBInstantGames_Quit()
{
	FBInstant.quit();
}

function FBInstantGames_GetPlatform()
{
	return FBInstant.getPlatform();
}

function FBInstantGames_GetLocale()
{
	return FBInstant.getLocale();
}

function FBInstantGames_SetScore(score,leaderboard,extradata,callbackfunction)
{
	FBInstant
	  .getLeaderboardAsync(leaderboard )
	  .then(leaderboard => {
		console.log(leaderboard.getName());
		return leaderboard.setScoreAsync(score, extradata);
	  })
	  .then(() => {
		  //eval("gml_Script_"+callbackfunction+"(null,null,'"+score+"')");
		  console.log('Score saved');
		  
	  })
	  .catch(error => console.error(error));

}

function FBInstantGames_QueryLeaderboard(lboard, numentries, offset, callbackfunction)
{
	
	  FBInstant.getLeaderboardAsync(lboard)
            .then(function(leaderboard){
              return leaderboard.getEntriesAsync(numentries,offset);
            })
            .then(function(entries){
                var ret = "";
				for (var i = 0; i < entries.length; i++) {
				  ret +=
					entries[i].getRank() + ':!' +
					entries[i].getPlayer().getName() + ':!' +
					entries[i].getPlayer().getPhoto()+ ':!' +
					entries[i].getScore()+':!';
				  
				}
				eval("gml_Script_"+callbackfunction+"(null,null,'"+ret+"')");
            })
            .catch(function(error) {
              console.log(error);
            });

}
function FBInstantGames_QueryLeaderboardPlayerPosition(lboard, callbackfunction)
{	
	FBInstant
  .getLeaderboardAsync(lboard)
  .then(function(leaderboard)
  {return leaderboard.getPlayerEntryAsync()})
  .then(function(entry){
	  var ret = 
      entry.getRank() + ':!' +
      entry.getPlayer().getName() + ':!' +
      entry.getScore();
	 eval("gml_Script_"+callbackfunction+"(null,null,'"+ret+"')"); 
  }).catch(error => console.error(error));
}

