game
difficultyLevel: aNumber
	difficultyLevel := aNumber.
	self numberOfMonsters: 2 + (aNumber * aNumber / 10) ceiling asInteger.
	self randomSlimeProbability: aNumber / 10 * 0.6.
	self borderProbability: 1.1 - (aNumber / 11).
	self toPlayerStrategyProbability: 0.2 + (aNumber / 10). 
	self pickUpItemProbability: 0.7 - (aNumber / 10).