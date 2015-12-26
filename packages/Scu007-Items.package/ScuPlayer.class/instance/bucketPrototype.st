action
bucketPrototype
	bucketPrototype ifNil: [bucketPrototype := ScuBucket newIn: self game].
	^ bucketPrototype