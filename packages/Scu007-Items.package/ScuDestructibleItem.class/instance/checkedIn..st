event handling
checkedIn: aTile
	self game 
		ifNotNil: [self game eventDispatcher register: self for: aTile].    