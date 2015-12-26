accessing
copyBucket
	|tGame tParent clone|
	tGame := self game.
	tParent := self parentItem.
	self game: nil; parentItem: nil.
	clone := self veryDeepCopy.
	self game: tGame; parentItem: tParent.
	^ clone