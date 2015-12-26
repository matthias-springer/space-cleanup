submorphs-add/remove
drawDiagonalDirectionOption
	| morph button |
	morph := self buildOptionMorph: 'Diagonal directions'.  
	button := PluggableButtonMorph on: (
		ScuPluggableButtonObject newNew: [self game configuration diagonalDirections ] 
		and: [ self game configuration diagonalDirections: self game configuration diagonalDirections not ]) 
		getState: #state action: #action.
	button onColor: Color green offColor: Color red.
	morph addMorphBack: button.
	self addMorphBack: morph.