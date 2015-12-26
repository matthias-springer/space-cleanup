initialize-release
gameInitialize
	super gameInitialize.
	movementQueue := OrderedCollection new.
	movementTimerCounter := 0.