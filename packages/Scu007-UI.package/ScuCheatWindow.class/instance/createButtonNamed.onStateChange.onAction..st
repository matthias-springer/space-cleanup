submorphs-add/remove
createButtonNamed: aString onStateChange: aClosure onAction: anotherClosure
	| m1 button |
	m1 := ScuPluggableButtonObject 
		newNew: [(aClosure value == false) not]
		and: anotherClosure.
	button := PluggableButtonMorph on: m1 getState: #state action: #action.
	button onColor: Color green offColor: Color red.
	button label: aString font: (self defaultFontIn: 16).
	^ button