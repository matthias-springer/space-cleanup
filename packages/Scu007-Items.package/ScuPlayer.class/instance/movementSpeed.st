action
movementSpeed
	movementSpeed ifNil: [self movementSpeed: self game configuration playerMovementSpeed].  
	^ movementSpeed