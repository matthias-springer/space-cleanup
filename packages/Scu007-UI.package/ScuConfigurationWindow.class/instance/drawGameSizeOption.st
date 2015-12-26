submorphs-add/remove
drawGameSizeOption
	| morph button inputX inputY |
	morph := self buildOptionMorph: 'Game Size: '.
	button := PluggableButtonMorph on: [
		inputX := (self showUserInputDialog: 'New game width (tile count)?' 
			default: self game configuration gameSize x asString) asInteger.
		inputY := (self showUserInputDialog: 'New game height (tile count)?' 
			default: self game configuration gameSize y asString) asInteger.
		self game configuration gameSize: inputX@inputY.
		button label: (inputX@inputY) asString] getState: nil action: #value.
	button label: self game configuration gameSize asString font: (self defaultFontIn: 16).
	morph addMorphBack: button.
	self addMorphBack: morph.