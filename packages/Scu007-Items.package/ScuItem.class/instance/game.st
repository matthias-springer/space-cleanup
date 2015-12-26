accessing
game
	game ifNil: [self game: self tileUnder game]. 
	^ game