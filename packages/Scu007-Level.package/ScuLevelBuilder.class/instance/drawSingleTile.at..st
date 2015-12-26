builder
drawSingleTile: aTile at: aPoint
	|position extent|
	extent := self game configuration tileSize.
	position := ((aPoint x - 1) * extent x) @ ((aPoint y - 1) * extent y).
	aTile drawAt: position withExtent: extent.