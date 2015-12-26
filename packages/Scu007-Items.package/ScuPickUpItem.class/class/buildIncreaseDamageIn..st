instance creation
buildIncreaseDamageIn: aGame
	^ self buildIn: aGame
		as: #soap
		on: #player
		do: [:anItem | anItem bucketPrototype damage: anItem bucketPrototype damage + 1]