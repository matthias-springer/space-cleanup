moving
bfsToPlayer
	|tile path|
	[self queue isEmpty] whileFalse: [
		path := self queue removeFirst. 
		tile := path last.
		(self visitedTiles includes: tile) ifFalse: [
			self visitedTiles add: tile.
			tile neighbors valuesDo: [:aTile | 
				(aTile = self game mainPlayer tileUnder) 
					ifTrue: [^ self bfsResultTo: aTile from: path].
				self bfsAddToQueue: aTile from: path]]].
	^ {nil}