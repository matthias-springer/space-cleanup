event handling
takeDamage: anAmount from: aDamageDealer
	self health: (self health - anAmount).
	(self deceased)
		ifTrue: [self deceaseBy: aDamageDealer. ^ (anAmount + self health)]
		ifFalse: [^ anAmount].
	