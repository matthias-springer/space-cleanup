moving
move
	|validDirections|
	(self game random next < self toPlayerProbability)
		ifTrue: [^ self directionToPlayer]
		ifFalse: [
			validDirections := (self directions select: [:dir | self canIMove: dir]).
			validDirections ifNotEmpty: [^ validDirections atRandom]].
	^ nil
