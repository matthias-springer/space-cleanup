render
drawStats
	|stats|
	stats := (ScuGameInformation newIn: self game).
	stats extent: 142@(8*self game configuration tileSize y);
		position: self game bounds topLeft + ((-140)@30);
		borderWidth: 2;
		borderColor: Color white.
	self game addMorph: stats.
	self game stats: stats.