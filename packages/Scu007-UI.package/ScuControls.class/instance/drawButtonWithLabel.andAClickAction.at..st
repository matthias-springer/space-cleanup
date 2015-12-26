submorphs-add/remove
drawButtonWithLabel: aString andAClickAction: aBlock at: aPosition
	| button |
	button := PluggableButtonMorph
		on: aBlock
		getState: nil
		action: #value.
	button label: aString;
		position: aPosition.
	self addMorph: button.