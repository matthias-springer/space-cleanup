events
checkOut: anItem
	anItem checkedOut: self.
	self removeMorph: anItem. 
	self items remove: anItem. 
