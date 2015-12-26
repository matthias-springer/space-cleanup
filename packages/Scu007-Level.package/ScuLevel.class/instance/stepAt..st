stepping and presenter
stepAt: millisecondClockValue
	| timeElapsed |
	timeElapsed := millisecondClockValue - (self lastStepAt ifNil: [millisecondClockValue]).
	self lastStepAt: millisecondClockValue.
	
	self game state countTime
		ifTrue: [self time: (self time + timeElapsed)].
	
	^ super stepAt: millisecondClockValue