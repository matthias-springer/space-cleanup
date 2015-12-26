instance creation
buildExtendDistanceIn: aGame
	^ self buildIn: aGame
		as: #extend
		on: #player
		do: [:anItem | anItem bucketPrototype distance: anItem bucketPrototype distance + 1]