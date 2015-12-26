instance creation
buildDecreaseBucketTimerIn: aGame
	^ self buildIn: aGame
		as: #fast
		on: #player
		do: [:anItem | anItem bucketPrototype timeout: anItem bucketPrototype timeout - 5]