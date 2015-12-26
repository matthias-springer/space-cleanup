instance creation
newIn: aGame
	| instance |
	instance := self basicNew.
	instance 
		game: aGame;
		initialize.
	^ instance