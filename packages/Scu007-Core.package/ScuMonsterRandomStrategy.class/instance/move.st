moving
move
	^ self directions deepCopy shuffled 
		detect: [:aDirection | self canIMove: aDirection] 
		ifNone: nil