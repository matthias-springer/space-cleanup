builder
createFloors
	|tile|
	tile := tiles atRandom.
	(self tiles size / self game configuration pathLengthDivisor) ceiling timesRepeat: [
		self removeWallFloorSlimeFromTile: tile.
		tile checkIn: (ScuFloor newIn: self game).
		(self game random next < (self game configuration randomSlimeProbability)) ifTrue: 
			[tile checkIn: (ScuSlime newIn: self game)].
		tile := tile neighbors atRandom].