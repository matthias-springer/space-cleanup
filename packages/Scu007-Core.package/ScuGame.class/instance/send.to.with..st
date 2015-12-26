event handling
send: aMessage to: aRecipient with: aPayload
	^ self eventDispatcher send: aMessage from: self to: aRecipient with: aPayload