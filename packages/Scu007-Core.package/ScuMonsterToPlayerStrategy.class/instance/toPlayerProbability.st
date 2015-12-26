accessing
toPlayerProbability
	toPlayerProbability ifNil: [self toPlayerProbability: self game random next + 1 / 2].
	^ toPlayerProbability