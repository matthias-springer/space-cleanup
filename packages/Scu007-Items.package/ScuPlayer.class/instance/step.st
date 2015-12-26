stepping and presenter
step
	self movementTimerCounter: (0 max: (self movementTimerCounter - 1)).
	((self movementTimerCounter = 0) and: self movementQueue isEmpty not) ifTrue: [
		self movementQueue first value. 
		self movementQueue removeFirst. 
		self movementTimerCounter: (self movementSpeed) / 50].  