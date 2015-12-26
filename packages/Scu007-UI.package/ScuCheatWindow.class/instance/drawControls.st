submorphs-add/remove
drawControls
	| morph |
	morph := self buildRowMorph.
	morph addMorphBack: (self createButtonNamed: 'close' onStateChange: [false] onAction: [self delete]).
	self addMorphBack: morph.