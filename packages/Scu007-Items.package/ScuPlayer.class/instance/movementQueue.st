moving
movementQueue
	movementQueue ifNil: [self movementQueue: OrderedCollection new].
	^ movementQueue