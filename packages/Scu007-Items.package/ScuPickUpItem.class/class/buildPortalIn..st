instance creation
buildPortalIn: aGame
	^ self buildIn: aGame
		as: #portal
		on: #player
		do: [:anItem | anItem portalsLeft: anItem portalsLeft + 1]