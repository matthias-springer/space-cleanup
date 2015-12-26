accessing
allListeners
	allListeners ifNil: [ self allListeners: IdentitySet new. ].
	^ allListeners