builder
buildTiles
	| gridSize |
	gridSize := self game configuration gameSize.
	self tiles: (Matrix rows: gridSize y columns: gridSize x tabulate: [ :y :x | 
		self buildSingleTile ]).
	self level tiles: tiles.