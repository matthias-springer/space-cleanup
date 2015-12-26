submorphs-add/remove
buildStringMorph: aNumber at: aPosition with: aString
	| stringMorph |
	stringMorph := StringMorph contents: aString.
	stringMorph font: (StrikeFont familyName: stringMorph font familyName size: 20).
	self addMorph: stringMorph.
	stringMorph position: aPosition;
		color: Color white.
	self strings at: aNumber put: stringMorph. 