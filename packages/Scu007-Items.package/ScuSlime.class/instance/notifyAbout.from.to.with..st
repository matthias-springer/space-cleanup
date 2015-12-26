event handling
notifyAbout: aMessage from: aSender to: aRecipient with: aPayload
	(aMessage == #gameIsWon)
		ifTrue: [ ^ self handleGameIsWon ].
	^ super notifyAbout: aMessage from: aSender to: aRecipient with: aPayload