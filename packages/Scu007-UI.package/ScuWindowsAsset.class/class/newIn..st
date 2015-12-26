instance creation
newIn: aGame
	^ super basicNew
		game: aGame;
		initialize;
		yourself