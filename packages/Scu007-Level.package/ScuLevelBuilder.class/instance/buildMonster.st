builder
buildMonster
	| monster strategy |
	monster := ScuMonster newIn: self game.
	self game random next < self game configuration toPlayerStrategyProbability
		ifTrue: [strategy := ScuMonsterToPlayerStrategy]
		ifFalse: [strategy := ScuMonsterRandomStrategy].
	monster strategy: (strategy newIn: game for: monster).
	^ monster