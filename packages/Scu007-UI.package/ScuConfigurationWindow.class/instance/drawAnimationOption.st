submorphs-add/remove
drawAnimationOption
	| morph button |
	morph := self buildOptionMorph: 'Show animations'.
	button := PluggableButtonMorph on: (
		ScuPluggableButtonObject newNew: [self game configuration animationEnabled] 
			and: [self game configuration animationEnabled: self game configuration animationEnabled not]) 
		getState: #state action: #action.
	button onColor: Color green offColor: Color red.
	morph addMorphBack: button.
	self addMorphBack: morph.