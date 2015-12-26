instance creation
buildExtraLifeIn: aGame
	^ self buildIn: aGame
		as: #heart
		on: #player
		do: [:anItem | anItem health: anItem health + 1]