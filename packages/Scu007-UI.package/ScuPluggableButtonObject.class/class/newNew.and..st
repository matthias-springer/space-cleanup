instance creation
newNew: stateBlock and: actionBlock
	^ self basicNew 
		actionBlock: actionBlock;
		stateBlock: stateBlock;
		yourself