accessing
distance: anObject
	distance := anObject.
	self send: #bucketDistance from: self to: nil with: anObject.