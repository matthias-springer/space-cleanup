events
checkIn: anItem withPositionChange: aBool
	aBool ifTrue: [
		anItem extent: self extent;
		position: self position].
	self checkInWithoutPositionChange: anItem.   