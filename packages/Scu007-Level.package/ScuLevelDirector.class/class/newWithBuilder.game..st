instance creation
newWithBuilder: aBuilder game: aGame
	^ ScuLevelDirector basicNew
		builder: (aBuilder newIn: aGame)
		yourself