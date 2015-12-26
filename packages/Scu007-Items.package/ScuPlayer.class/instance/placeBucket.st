action
placeBucket
	| bucket |
	self deceased ifFalse: [
		self bucketsLeft > 0 ifTrue: [
				bucket := self bucketPrototype copyBucket.
				bucket placedIn: self game parentItem: self.
				(self tileUnder checkIn: bucket withPermissions: bucket enterPermissions default: true) ifTrue: [self bucketPlaced].
				^ true]].
	^ false