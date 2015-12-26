builder
linkTilePair: aTile and: otherTile forwards: aDirection backwards: otherDirection
	aTile neighbors at: aDirection put: otherTile.
	otherTile neighbors at: otherDirection put: aTile.