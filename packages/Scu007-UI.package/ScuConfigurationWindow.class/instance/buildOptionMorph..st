submorphs-add/remove
buildOptionMorph: anOption
	^ self buildRowMorph
		addMorph: (self buildStringMorph: anOption in: 16);
		yourself