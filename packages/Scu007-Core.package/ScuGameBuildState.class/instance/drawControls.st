render
drawControls
	| controls |
	controls := ScuControls newIn: self game.
	controls extent: 260@27;
		position: self game bounds topLeft + ((self game extent x - 15)@(-25));
		borderWidth: 2;
		borderColor: Color white.
	self game addMorph: controls.  
