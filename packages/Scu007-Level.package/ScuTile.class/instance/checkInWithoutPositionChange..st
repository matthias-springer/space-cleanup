events
checkInWithoutPositionChange: anItem
	| itemBefore |
	itemBefore := anItem.
	self submorphs do: [ :subMorph | itemBefore zIndex < subMorph zIndex
		 ifTrue: [itemBefore := subMorph]].
	anItem = itemBefore 
		ifTrue: [self addMorph: anItem]
		ifFalse: [self addMorph: anItem behind: itemBefore].
	self items add: anItem.
	anItem checkedIn: self.