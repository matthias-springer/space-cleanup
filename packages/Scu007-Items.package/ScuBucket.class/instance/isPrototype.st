accessing
isPrototype 
	isPrototype ifNil: [self isPrototype: true].   
	^ isPrototype