A ScuGame is the "central" game object. It keeps references to all important objects and starts the game.

Instance Variables
	actions:		Actions, such as #firstPlayerRight or #firstPlayerPlaceBucket.
	cakeAction:		Determines what happens, if the player picks up a cake (the cake is a lie!).
	configuration:		The (single) configuration object for this game.
	eventDispatcher:		The (single) event dispatcher for this game.
	gameTime:		?
	keys:		?
	lastStepAt:		?
	level:		The level for this game (basically a set of tiles).
	mainPlayer:		The (single) human player for this game.
	monsters:		The set of monsters for this game.
	preferences:		?
	random:		A random number generator.
	resources:		The (single) resource manager for this game.
	state:		The state this game is currently in (e.g. #building).
