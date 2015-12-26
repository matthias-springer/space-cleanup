initialize-release
delete
	self tileUnder ifNotNil: [self tileUnder checkOut: self].
	self game eventDispatcher unregister: self.
	^ super delete