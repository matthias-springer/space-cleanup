builder
drawTiles
	self tiles withIndicesDo: [:tile :y :x |
		self drawSingleTile: tile at: x@y].
	self level extent: self game configuration tileSize * self game configuration gameSize.  