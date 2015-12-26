dialogs
showUserInputDialog: aRequest default: aDefaultValue
	| input |
	[input isNil] whileTrue: [
		input := FillInTheBlankMorph request: aRequest	initialAnswer: aDefaultValue].
	^ input