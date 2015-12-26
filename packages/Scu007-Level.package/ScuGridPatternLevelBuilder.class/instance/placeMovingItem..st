builder
placeMovingItem: aMovingItem
	| x y aRandomTile |
	x := self game random nextInt: self game configuration gameSize x.
	y := self game random nextInt: self game configuration gameSize y.
	x even ifTrue: [x := (x + 1) \\ self game configuration gameSize x].
	y even ifTrue: [y := (y + 1) \\ self game configuration gameSize y].
	aRandomTile := self level tiles at: y at: x.
	aRandomTile checkOutType: #slime.  
	self buildFloorAroundTile: aRandomTile.
	^ aRandomTile checkIn: aMovingItem