registering
register: anObject for: aRecipient
	self allListeners add: anObject.
	(self listenersRegisteredFor: aRecipient) add: anObject