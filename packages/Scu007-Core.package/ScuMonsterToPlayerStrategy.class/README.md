A ScuMonsterToPlayerStrategy moves the monster towards the player with a given probability, i.e. the monster either moves completely random or calculates the shortest path to the player and moves into that direction. The randomness was introduced to make the movement of the monster less predictable.

Instance Variables
	queue:		The breadth-first search queue, containing paths to be evaluated.
	shortestPath:		Caches the shortest path to the player.
	toPlayerProbability:		Determines, at which probability the monster moves random or towards the player.
	visitedTiles:		Set of visited tiles for the breadth-first search not to get lost in cycles.

Methods
	bfsToPlayer:		Performs a breadth-first search to calculate the shortest path to the player (if there is a path). If no path was found the monster moves randomly.
	directionToPlayer:				Prepares data structures for the breadth-first search and starts the algorithm.
	bfsResultTo:		Takes the shortest path calculated by the bfs and returns only a fraction of it for caching purposes.
	shortestPath:		Returns the cached path to the player or calculates a new one after some time. Caching is useful when there are more than 30 monsters on the game.