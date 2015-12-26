A ScuPlayer is an item that the human user can control. It can place buckets that later spread water. 

Instance Variables
	bucketsCount:		Number of buckets the player can place.		
	bucketPrototype:		Bucket which saves damage, direction and other values. It is copied when the player places a new bucket.
	movementQueue:		Movement queue to save movement orders of the player. If the player is currently moving the order is saved and executed later. This queue enforces that the player can't run arbitrarily fast.
	movementSpeed:		Determines, how long a movement action endures.
	movementTimerCounter:		Counts the time elapsed since the last move.
	portalsLeft:		The number of portals the player can place.

