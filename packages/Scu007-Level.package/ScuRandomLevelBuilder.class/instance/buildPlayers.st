builder
buildPlayers
	| unoccupiedTiles aRandomTile |
	self game mainPlayer: self buildPlayer.
	unoccupiedTiles := self tiles asSet select: [:aTile | 
		aTile canIEnterWithPermissions: (self game mainPlayer enterPermissions) default: false].
	aRandomTile := unoccupiedTiles atRandom.
	self buildFloorAroundTile: aRandomTile.
	^ aRandomTile checkIn: self game mainPlayer