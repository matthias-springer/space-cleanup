accessing
timeout: anObject 
	(self isPrototype not or: anObject > 5) ifTrue: [timeout := anObject].
