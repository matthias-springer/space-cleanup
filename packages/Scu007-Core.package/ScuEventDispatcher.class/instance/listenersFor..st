accessing
listenersFor: aRecipient
	| list |
	list := IdentitySet new.
	(aRecipient == #all)
		ifTrue: [list addAll: self allListeners]
		ifFalse: [list addAll: (self listenersRegisteredFor: aRecipient).
			list addAll: (self listenersRegisteredFor: #all)].
	^ list