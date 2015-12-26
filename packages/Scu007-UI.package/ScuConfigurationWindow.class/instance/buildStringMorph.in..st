submorphs-add/remove
buildStringMorph: aContent in: aSize
	^ (StringMorph contents: aContent font: (self defaultFontIn: aSize))
		color: Color white;
		yourself