action
placePortal
	| portal canPlace |
	self direction ifNil: [^ false].  
	portal := ScuPortal newFirstWithDirection: self direction. 
	canPlace := (self portalsLeft > 0) 
		and: (self tileUnder canIEnterWithPermissions: portal enterPermissions default: true) 
		and: [(self tileUnder neighborAt: self direction) 
				canIEnterWithPermissions: portal enterPermissions default: false].
	canPlace ifTrue: [
		self tileUnder checkIn: portal.  
		self portalPlaced: portal].
	^ canPlace