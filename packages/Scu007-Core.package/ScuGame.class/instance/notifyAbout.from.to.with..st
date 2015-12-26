event handling
notifyAbout: aMessage from: aSender to: aRecipient with: aPayload
	(aMessage == #deceased) ifTrue: [^ self handleDeceasedItem: aSender by: aPayload].
	^ nil