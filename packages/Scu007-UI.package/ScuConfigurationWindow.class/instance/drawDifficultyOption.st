submorphs-add/remove
drawDifficultyOption
	| morph button input |
	morph := self buildOptionMorph: 'Difficulty: '.
	button := PluggableButtonMorph on: [
		input := (self showUserInputDialog: 'Difficulty (1-10)?'
		default: self game configuration difficultyLevel asString) asInteger.
		self game configuration difficultyLevel: ((input  - 1) \\ 10) + 1.
		button label: (((input  - 1) \\ 10) + 1)asString.] getState: nil action: #value.
	button label: self game configuration difficultyLevel asString font: (self defaultFontIn: 16).
	morph addMorphBack: button.
	self addMorphBack: morph.