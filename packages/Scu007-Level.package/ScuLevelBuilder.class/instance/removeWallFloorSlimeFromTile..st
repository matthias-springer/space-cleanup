builder
removeWallFloorSlimeFromTile: aTile
	(aTile items select: [ :item | 
		#(wall floor slime) includes: item itemSymbol ]) do: [:each | 
			aTile checkOut: each].