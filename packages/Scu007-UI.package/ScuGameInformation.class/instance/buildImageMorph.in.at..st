submorphs-add/remove
buildImageMorph: aSymbol in: aVariation at: aPosition
	| imageMorph |
	imageMorph := ImageMorph new.
	imageMorph newForm: (self game resources formFor: aSymbol inVariation: aVariation).
	self addMorph: imageMorph.
	imageMorph position: aPosition.