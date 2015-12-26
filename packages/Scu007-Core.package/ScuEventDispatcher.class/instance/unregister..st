unregistering
unregister: anEventListener
	self allListeners remove: anEventListener ifAbsent: [].
	self listeners valuesDo: [:anIdentitySet | 
		anIdentitySet remove: anEventListener ifAbsent: []].
	^ anEventListener