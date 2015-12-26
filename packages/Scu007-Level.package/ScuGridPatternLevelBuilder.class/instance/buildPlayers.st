builder
buildPlayers
	self game mainPlayer: self buildPlayer.
	self placeMovingItem: self game mainPlayer.