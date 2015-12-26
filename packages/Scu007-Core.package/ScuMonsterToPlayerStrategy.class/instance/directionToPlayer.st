moving
directionToPlayer
	| path |
	self visitedTiles: IdentitySet new.
	self queue: OrderedCollection new.
	self directions do: [:aDirection | (self canIMove: aDirection) ifTrue: [
		path := OrderedCollection new.
		path add: (monster tileUnder neighborAt: aDirection).
		self queue addLast: path]].
	^ self shortestPath