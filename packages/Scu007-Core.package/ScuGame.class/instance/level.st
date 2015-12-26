accessing
level
	level ifNil: [self error: 'you need to build a level'].
	^ level