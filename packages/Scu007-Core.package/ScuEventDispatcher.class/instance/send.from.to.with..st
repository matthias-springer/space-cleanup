event dispatching
send: aMessage from: aSender to: aRecipient with: aPayload
	| responses dispatchEvent |
	responses := Bag new.
	dispatchEvent := [:re | responses add: (re notifyAbout: aMessage from: aSender to: aRecipient with: aPayload)].
	(self listenersFor: aRecipient) do: dispatchEvent.
	^ responses