event handling
keyStroke: anEvent  
	(self actionAt: (self preferences actionOn: anEvent keyCharacter)) value.
