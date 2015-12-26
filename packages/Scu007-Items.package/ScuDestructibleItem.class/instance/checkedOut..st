event handling
checkedOut: aTile
	self game 
		ifNotNil: [self game eventDispatcher unregister: self from: aTile].