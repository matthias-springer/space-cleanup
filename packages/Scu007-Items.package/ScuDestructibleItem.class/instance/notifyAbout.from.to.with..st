event handling
notifyAbout: aMessage from: aSender to: aRecipient with: aPayload
	((aMessage == #damage) and: 	(aRecipient == self tileUnder))
		ifTrue: [^ self takeDamage: aPayload from: aSender].
	^ super notifyAbout: aMessage from: aSender to: aRecipient with: aPayload