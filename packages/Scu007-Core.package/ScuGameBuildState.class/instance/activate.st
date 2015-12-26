actions
activate
	self game resources imageSize: self game configuration tileSize.
	self game eventDispatcher: nil. "clear events"
	self game
		removeAllMorphs;
		position: 150@50;
		level: (ScuLevelDirector
			newWithBuilder: self game configuration builder 
			game: self game) construct.
	self
		drawControls;
		drawStats;
		drawLevel.
	self game state: (ScuGamePausedState newIn: self game).