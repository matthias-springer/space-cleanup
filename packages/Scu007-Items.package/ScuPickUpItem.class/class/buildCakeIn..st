instance creation
buildCakeIn: aGame
	^ self buildIn: aGame
		as: #cake
		on: #player
		do: [:anItem | 
			| newMonsters builder | 
			builder := aGame level builder.
			newMonsters := OrderedCollection new.
			aGame configuration monstersAtCakeAction timesRepeat:
				[ newMonsters add: builder buildMonster ].
			builder positionMonsters: newMonsters ]