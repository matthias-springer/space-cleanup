accessing
damage: anObject
	damage := anObject.
	self send: #bucketDamage from: self parentItem to: nil with: anObject.