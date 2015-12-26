moving
canIMove: aDirection
	^ (self monster tileUnder neighborAt: aDirection) 
		canIEnterWithPermissions: self monster enterPermissions 
		default: false