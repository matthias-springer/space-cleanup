moving
moveFrom: current to: nextTile withAnimation: aBool
	(nextTile canIEnterWithPermissions: self enterPermissions default: false) ifTrue: [ 
		nextTile checkIn: self withPositionChange: aBool not.
		current checkOut: self. 
		aBool ifTrue: [self animateMovementFrom: current to: nextTile callback: []].
		self send: #objectMovement to: nextTile with: nil.
		^ true].
	^ false