accessing
configuration
	configuration ifNil: [self configuration: ScuConfiguration new].
	^ configuration