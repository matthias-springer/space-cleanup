stepping and presenter
step
	self isPrototype 
		ifFalse: [
			self timeout: self timeout - 1.
			(self timeout < 1) 
				ifTrue: [self wash]].