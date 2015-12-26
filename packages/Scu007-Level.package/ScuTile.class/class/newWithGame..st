construct
newWithGame: aGame
	^ ScuTile basicNew
		game: aGame;
		initialize;
		initializeNeighborConnections;
		yourself