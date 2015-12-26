builder
buildItems
	self tiles withIndicesDo: [:tile :y :x | (x even and: y even) 
		ifTrue: [tile checkIn: (ScuWall newIn: self game)]
		ifFalse: [tile 
			checkIn: (ScuFloor newIn: self game); 
			checkIn: (ScuSlime newIn: self game)]].