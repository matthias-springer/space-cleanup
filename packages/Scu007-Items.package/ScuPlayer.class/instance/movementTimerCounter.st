moving
movementTimerCounter
	movementTimerCounter ifNil: [self movementTimerCounter: 0].
	^ movementTimerCounter