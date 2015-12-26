accessing
bucketsLeft: anObject
	bucketsLeft := anObject.
	self send: #bucketsLeft to: nil with: anObject.