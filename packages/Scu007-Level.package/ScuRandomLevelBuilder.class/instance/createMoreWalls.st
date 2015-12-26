builder
createMoreWalls
	"Creates additional walls if there is a large free (floor) area."
	self tiles do: [:tile |
		(tile surroundedAccessibleFields allSatisfy: 	[:neighbor | neighbor searchFor: #floor]) ifTrue: [
			self removeWallFloorSlimeFromTile: tile.
			tile checkIn: (ScuWall newIn: self game)]].