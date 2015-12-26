permits
placedIn: aGame parentItem: aParentItem
	self isPrototype: false.
	self game: aGame.
	self parentItem: aParentItem.
	self gameInitialize.    