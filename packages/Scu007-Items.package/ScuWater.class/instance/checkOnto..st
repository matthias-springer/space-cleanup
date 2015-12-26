actions
checkOnto: aTile
	| responses damageDealt |
	(aTile checkIn: self withPermissions: {#wall} default: true) ifTrue: [
		responses :=
			(self send: #damage from: self bucket player to: self tileUnder with: self damage)
			select: [:anItem | anItem isInteger].
		responses add: 0. "Responses should not be empty (we use #sum)."
		damageDealt := responses sum.
		self damage: self damage - damageDealt].