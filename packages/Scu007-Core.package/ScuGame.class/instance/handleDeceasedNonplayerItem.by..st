event handling
handleDeceasedNonplayerItem: anItem by: anotherItem
	((self eventDispatcher allRecipientsSatisfy: #gameIsWon from: self to: #all with: nil)
		and: [self state isFinished not]) ifTrue: [self state: (ScuGameWonState newIn: self)].