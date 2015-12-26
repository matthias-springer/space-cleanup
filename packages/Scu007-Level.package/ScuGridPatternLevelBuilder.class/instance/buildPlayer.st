builder
buildPlayer
	| player |
	player := super buildPlayer.
	player portalsLeft: self game configuration playerInitNumberOfPortals. 
	^ player