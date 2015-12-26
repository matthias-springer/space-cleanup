random level generation
randomSlimeProbability
	randomSlimeProbability ifNil: [self randomSlimeProbability: 0.1].
	^ randomSlimeProbability