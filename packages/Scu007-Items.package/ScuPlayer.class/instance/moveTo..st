moving
moveTo: aDirectionSymbol
	| movementClosure |
	movementClosure := [super moveTo: aDirectionSymbol].
	(movementTimerCounter = 0) ifTrue: [ 
		movementClosure value. 
		self movementTimerCounter: self movementSpeed / 50] 
	ifFalse: [(self movementQueue size < 1) ifTrue: [
		movementQueue add: movementClosure]].
	self drawImage.