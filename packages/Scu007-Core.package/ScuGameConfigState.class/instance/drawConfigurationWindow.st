render
drawConfigurationWindow
	| morph |
	morph := ScuConfigurationWindow newIn: self game.
	morph position: self game bounds topLeft;
		borderWidth: 2;
		borderColor: Color white.  
	self game addMorph: morph.    

