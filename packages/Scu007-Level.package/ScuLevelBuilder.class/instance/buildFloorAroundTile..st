builder
buildFloorAroundTile: aTile
	"Builds at least 3 free (floor) items/fields around a given tile randomly, e.g. for the player to have enough space."
	| neighbors |
	neighbors := (aTile neighbors values select: [:x | x~= nil]) shuffled.
	{ neighbors first. neighbors second. neighbors third. } do: [:neighbor | 
		self removeWallFloorSlimeFromTile: neighbor.
		neighbor checkIn: (ScuFloor newIn: self game)].