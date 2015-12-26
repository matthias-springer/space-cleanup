stepping and presenter
step
	self propagated
		ifNil: [self propagated: false]
		ifNotNil: [self propagated ifFalse: [self propagate] ifTrue: [self delete]].
