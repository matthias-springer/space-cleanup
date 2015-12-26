builder
createWalls
	| gameSize tile |
	gameSize := self game configuration gameSize.
	1 to: (gameSize x) do: [:x | 1 to: (gameSize y) do: [:y | 
		tile := self tiles at: y at: x.
		tile checkIn: (ScuWall newIn: self game)]].