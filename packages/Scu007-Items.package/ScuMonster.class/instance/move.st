moving
move
	| movingDirection |
	movingDirection := self strategy move.
	movingDirection ifNotNil: [self moveTo: movingDirection].