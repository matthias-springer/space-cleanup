instance creation
newIn: aGame
	^ self basicNew
		game: aGame;
		initialize;
		gameInitialize;
		yourself