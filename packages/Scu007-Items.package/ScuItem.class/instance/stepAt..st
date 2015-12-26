stepping and presenter
stepAt: millisecondClockValue
	(self game isNil or: [ self game state allowMoving ]) 
		ifTrue: [^ super stepAt: millisecondClockValue].
