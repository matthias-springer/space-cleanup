random level generation
borderProbability
	borderProbability ifNil: [self borderProbability: 0.6].
	^ borderProbability