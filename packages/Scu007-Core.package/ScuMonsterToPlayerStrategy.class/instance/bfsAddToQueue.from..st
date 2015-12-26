moving
bfsAddToQueue: aTile from: aPath
	|newPath|
	(self canIEnter: aTile) ifTrue: [
		newPath := aPath copy.
		newPath addLast: aTile.
		self queue addLast: newPath].