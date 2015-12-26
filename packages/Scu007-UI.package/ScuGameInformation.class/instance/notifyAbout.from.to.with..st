accessing
notifyAbout: aMessage from: aSender to: aRecipient with: aContent
	aMessage = #deceased ifTrue: [
		aSender itemSymbol = #monster 
			ifTrue: [ self scorePoints: self scorePoints + 10 ]
			ifFalse: [ self scorePoints: self scorePoints + 1 ]
		].
	self refreshStrings.
