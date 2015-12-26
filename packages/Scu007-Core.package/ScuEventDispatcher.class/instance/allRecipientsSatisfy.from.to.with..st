event dispatching
allRecipientsSatisfy: aMessage from: aSender to: aRecipient with: aPayload
	| dispatchEvent |
	dispatchEvent := [:re | 
		((re notifyAbout: aMessage from: aSender to: aRecipient with: aPayload) = false)
			ifTrue: [^ false]].
	(self listenersFor: aRecipient) do: dispatchEvent.
	^ true