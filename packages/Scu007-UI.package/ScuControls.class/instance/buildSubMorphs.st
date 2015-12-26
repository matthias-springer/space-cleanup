submorphs-add/remove
buildSubMorphs
	self drawButtonWithLabel: 'close' 
		andAClickAction: [self game delete]
		at: 20@5.
	self drawButtonWithLabel: 'new level' 
		andAClickAction: [self game state: (ScuGameBuildState newIn: self game)]
		at: 60@5.
	self drawButtonWithLabel: 'new game' 
		andAClickAction: [self game state: (ScuGameConfigState newIn: self game)]
		at: 127@5.
	self drawButtonWithLabel: 'pause' 
		andAClickAction: [self game state togglePaused]
		at: 200@5.
	self game configuration cheatsEnabled ifTrue: [self buildCheatWindow].