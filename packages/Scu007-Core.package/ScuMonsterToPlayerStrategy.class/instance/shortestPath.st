moving
shortestPath
	"Cache shortest path, useful for more than 20 monsters in the game."
	shortestPath ifNil: [self shortestPath: OrderedCollection new].
	shortestPath ifEmpty: [self shortestPath: self bfsToPlayer].
	(self monster tileUnder neighbors values includes: shortestPath first) ifFalse: [
			self shortestPath: self bfsToPlayer.
			^ self directions atRandom].
	^ self monster tileUnder neighbors keyAtValue: (shortestPath removeFirst)