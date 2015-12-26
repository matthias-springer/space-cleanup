initialize-release
initialize
	super initialize.
	self game eventDispatcher register: self for: nil.