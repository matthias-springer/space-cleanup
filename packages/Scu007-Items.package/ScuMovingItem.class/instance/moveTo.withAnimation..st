moving
moveTo: aDirectionSymbol withAnimation: aBool
	| next current |
	self deceased ifFalse: [
		self direction: aDirectionSymbol.  
		current := self tileUnder.
		next := self tileUnder neighborAt: aDirectionSymbol.
		next ifNotNil: [
			(self moveFrom: current to: next withAnimation: aBool) ifTrue: [^ true]]].
	^ false