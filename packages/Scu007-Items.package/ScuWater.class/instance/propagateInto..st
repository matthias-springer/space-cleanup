actions
propagateInto: aDirection
	| aField |
	(aDirection notNil and: (self distance > 0) and: (self damage > 0)) ifTrue: [
		aField := self tileUnder neighborAt: aDirection.
		(self class 
			newFrom: self bucket 
			into: aDirection 
			reaching: (self distance - 1) 
			dealing: self damage)
		 		checkOnto: aField].