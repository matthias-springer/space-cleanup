accessing
cache
	cache ifNil: [self cache: IdentityDictionary new].
	^ cache