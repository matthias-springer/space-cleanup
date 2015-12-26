moving
moveTo: aDirectionSymbol
	| animationEnabled |
	animationEnabled := self game configuration animationEnabled.
	^ self moveTo: aDirectionSymbol withAnimation: animationEnabled