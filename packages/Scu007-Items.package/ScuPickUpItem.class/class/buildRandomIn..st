instance creation
buildRandomIn: aGame
	| rand |
	rand := aGame random next * 59.
	(rand < 10) ifTrue: [ ^ self buildCakeIn: aGame ].
	(rand < 20) ifTrue: [ ^ self buildPortalIn: aGame ].
	(rand < 25) ifTrue: [ ^ self buildExtraLifeIn: aGame ].
	(rand < 35) ifTrue: [ ^ self buildIncreaseDamageIn: aGame ].
	(rand < 41) ifTrue: [ ^ self buildIncreaseBucketsIn: aGame ].
	(rand < 51) ifTrue: [ ^ self buildExtendDistanceIn: aGame ].
	^ self buildDecreaseBucketTimerIn: aGame