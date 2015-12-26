event handling
checkedIn: aTile
	self connectedPortal ifNil: [
		self connectedPortal: (self class newSecondWithDirection: self direction withFirst: self).
		(self connectedPortal placeAsSecondPortalWithStartAt: self tileUnder) 
			ifTrue: [self 
				connectedPortal direction: self oppositeDirection;
				draw;
			 	connectPortal: self with: self connectedPortal]].