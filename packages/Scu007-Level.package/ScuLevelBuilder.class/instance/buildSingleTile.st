builder
buildSingleTile
	| tile |
	tile := ScuTile newWithGame: self game.
	self level addMorph: tile.
	^ tile