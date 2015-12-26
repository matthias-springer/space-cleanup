submorphs-add/remove
drawTileSizeOption
	| morph button input |
	morph := self buildOptionMorph: 'Tile Size: '.
	button := PluggableButtonMorph on: [
		input := (self showUserInputDialog: 'New tile size (px)?' 
			default: self game configuration tileSize x asString) asInteger.
		self game configuration tileSize: input@input.
		button label: input asString] getState: nil action: #value.
	button label: self game configuration tileSize x asString font: (self defaultFontIn: 16).
	morph addMorphBack: button.
	self addMorphBack: morph.