actions
construct
	builder
		buildLevel;
		buildTiles;
		linkTiles;
		buildItems;
		buildPlayers;
		buildMonsters;
		positionMonsters.
	builder game configuration draw ifTrue: [
		builder 
			drawTiles;
			drawItems].
	^ builder level