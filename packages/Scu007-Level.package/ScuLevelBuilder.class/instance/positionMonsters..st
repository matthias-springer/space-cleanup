builder
positionMonsters: aMonsterList
	| unoccupiedTiles aRandomTile |
	unoccupiedTiles := self getUnoccupiedTilesFor: aMonsterList first.  
	aMonsterList do: [:aMonster | 
		unoccupiedTiles ifNotEmpty: [  
			aRandomTile := self positionSingleMonster: aMonster atRandom: unoccupiedTiles.
			unoccupiedTiles remove: aRandomTile]].