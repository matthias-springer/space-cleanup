event handling
connectPortal: firstPortal with: secondPortal
	| sourceTile targetTile |
	sourceTile := firstPortal tileUnder.
	targetTile := secondPortal tileUnder.
	sourceTile neighbors at: firstPortal direction put: targetTile.
	targetTile neighbors at: secondPortal direction put: sourceTile.