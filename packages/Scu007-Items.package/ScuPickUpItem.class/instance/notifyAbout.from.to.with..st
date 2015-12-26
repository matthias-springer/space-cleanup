event handling
notifyAbout: aMessage from: aSender to: aRecipient with: aPayload
	((aMessage == #objectMovement) and: (aRecipient == self tileUnder))
		ifTrue: [ ^ self react: aSender ].
	^ super notifyAbout: aMessage from: aSender to: aRecipient with: aPayload