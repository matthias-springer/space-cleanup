accessing
eventDispatcher
	eventDispatcher ifNil: [
		self eventDispatcher: ScuEventDispatcher new.
		self eventDispatcher register: self for: #all].
	^ eventDispatcher