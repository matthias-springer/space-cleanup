actions
propagate
	self propagated: true.
	self direction 
		ifNil: [self game configuration directions do: [:aDir | self propagateInto: aDir]]
		ifNotNil: [self propagateInto: self direction].