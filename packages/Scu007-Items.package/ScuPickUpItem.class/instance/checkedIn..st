event handling
checkedIn: aTile
	self game eventDispatcher register: self for: self tileUnder.
	