event handling
checkedIn: aTile
	(aTile searchFor: #slime) ifFalse: [aTile checkIn: (ScuSlime newIn: self game)].