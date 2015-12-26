events
checkIn: anItem withPermissions: permissions default: default
	(self canIEnterWithPermissions: permissions default: default) 
		ifFalse: [^ false] 
		ifTrue: [
			self checkIn: anItem.
			^ true ].