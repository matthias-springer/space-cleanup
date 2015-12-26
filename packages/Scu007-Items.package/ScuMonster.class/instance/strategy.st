moving
strategy
	strategy ifNil: [self strategy: (ScuMonsterToPlayerStrategy newIn: self game for: self)].
	^ strategy