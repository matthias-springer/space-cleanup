event handling
handleDeceasedItem: anItem by: anotherItem
	(anItem itemSymbol == #player)
		ifTrue:  [^ self handleDeceasedPlayerItem: anItem by: anotherItem]
		ifFalse: [^ self handleDeceasedNonplayerItem: anItem by: anotherItem].