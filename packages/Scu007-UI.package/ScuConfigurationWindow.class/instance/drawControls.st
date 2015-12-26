submorphs-add/remove
drawControls
	| morph button |
	morph := self buildRowMorph.
	button := PluggableButtonMorph 
		on: [ self game state: (ScuGameBuildState newIn: self game) ] 
		getState: nil action: #value.
	button label: 'Start Game' font: (self defaultFontIn: 16).
	morph addMorphBack: button.
	button := PluggableButtonMorph 
		on: [ self game delete ] 
		getState: nil action: #value.
	button label: 'Close' font: (self defaultFontIn: 16).
	morph addMorphBack: button.
	self addMorphBack: morph.