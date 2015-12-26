builder
getUnoccupiedTilesFor: anItem
	^ self tiles asSet select: [:aTile | 
		aTile canIEnterWithPermissions: (anItem enterPermissions) default: false]