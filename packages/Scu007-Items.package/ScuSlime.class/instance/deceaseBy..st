actions
deceaseBy: aDamageDealer
	self game random next < self game configuration pickUpItemProbability
		ifTrue: [(self tileUnder) checkIn: (ScuPickUpItem buildRandomIn: self game)].
	super deceaseBy: aDamageDealer.