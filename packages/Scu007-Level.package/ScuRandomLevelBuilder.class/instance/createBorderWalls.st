builder
createBorderWalls
	| borderTiles |
	borderTiles := Set new.
	{1. self game configuration gameSize x} do: [:x | borderTiles addAll: (tiles atColumn: x)].
	{1. self game configuration gameSize y} do: [:y | borderTiles addAll: (tiles atRow: y)].
	borderTiles do: [:tile | 
		(self game random next < self game configuration borderProbability) ifTrue: [
			self removeWallFloorSlimeFromTile: tile.
			tile checkIn: (ScuWall newIn: self game)]].