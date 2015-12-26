builder
linkTiles
	| prevX nextX nextY |
	self tiles withIndicesDo: [:tile :y :x |
		prevX := ((x - 2) \\ self game configuration gameSize x) + 1.
		nextX := (x \\ self game configuration gameSize x) + 1.
		nextY := (y \\ self game configuration gameSize y) + 1.
		self linkTilePair: tile and: (self tiles at: y at: nextX) 
			forwards: #east backwards: #west.
		self linkTilePair: tile and: (self tiles at: nextY at: x) 
			forwards: #south backwards: #north.
		self game configuration diagonalDirections ifTrue: [
			self linkTilePair: tile and: (tiles at: nextY at: nextX)
				forwards: #southEast backwards: #northWest.
			self linkTilePair: tile and: (tiles at: nextY at: prevX)
				forwards: #southWest backwards: #northEast]].
