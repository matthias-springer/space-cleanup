accessing
animationTime 
	animationTime ifNil: [self animationTime: self movementSpeed - 50].
	^ animationTime