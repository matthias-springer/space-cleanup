accessing
reactions
	reactions ifNil: [self reactions: IdentityDictionary new].
	^ reactions