instance creation
newIn: aGame for: aMonster
	^ self basicNew
		game: aGame;
		monster: aMonster;
		initialize;
		yourself