accessing
keyMapping
	keyMapping ifNil: [self keyMapping: Dictionary new].
	^ keyMapping