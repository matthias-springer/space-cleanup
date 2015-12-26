accessing
placeAsSecondPortalWithStartAt: startTile
	| currentTile |
	currentTile := startTile neighborAt: self direction.
	[currentTile canIEnterWithPermissions: self enterPermissions default: false] 
		whileTrue: [currentTile := currentTile neighborAt: self direction].
	^currentTile checkIn: self withPermissions: self enterPermissions default: true