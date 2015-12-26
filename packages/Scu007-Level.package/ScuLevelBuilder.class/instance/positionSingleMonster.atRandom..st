builder
positionSingleMonster: aMonster atRandom: unoccupiedTiles
	^ unoccupiedTiles atRandom checkIn: aMonster
