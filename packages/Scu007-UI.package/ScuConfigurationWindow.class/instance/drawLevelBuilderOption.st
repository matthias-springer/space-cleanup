submorphs-add/remove
drawLevelBuilderOption
	| morph button m1 m2|
	morph := self buildOptionMorph: 'Level type'.  
	m1 := ScuPluggableButtonObject 
		newNew: [self game configuration builder = ScuRandomLevelBuilder ] 
		and: [ self game configuration builder: ScuRandomLevelBuilder. m2 changed].
	button := PluggableButtonMorph on: m1 getState: #state action: #action.
	button onColor: Color green offColor: Color red.
	button label: 'Random Level' font: (self defaultFontIn: 16).
	morph addMorphBack: button.
	m2 := ScuPluggableButtonObject 
		newNew: [self game configuration builder = ScuGridPatternLevelBuilder ]
		and: [ self game configuration builder: ScuGridPatternLevelBuilder. m1 changed].
	button := PluggableButtonMorph on: m2 getState: #state action: #action.
	button onColor: Color green offColor: Color red.
	button label: 'Grid Level' font: (self defaultFontIn: 16).
	morph addMorphBack: button.
	self addMorphBack: morph.