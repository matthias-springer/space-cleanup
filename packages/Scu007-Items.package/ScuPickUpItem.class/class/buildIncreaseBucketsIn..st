instance creation
buildIncreaseBucketsIn: aGame
	^ self buildIn: aGame
		as: #bucket
		on: #player
		do: [:anItem | anItem bucketsLeft: anItem bucketsLeft + 1]