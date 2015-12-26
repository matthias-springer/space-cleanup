actions
wash
	self washing ifFalse: [
		self washing: true.
		self parentItem ifNotNil: [self parentItem bucketDeleted].
		self placeWater.
		self tileUnder checkOut: self].
