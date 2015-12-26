submorphs-add/remove
buildSubMorphs
	| size padding count | 
	size := self game configuration tileSize.
	padding := size x / 4.
	size := (size x + (size x / 4))@(size y).
	count := 0.
	self dataToShow do: [:twoSymbols |
		self buildStringMorph: twoSymbols first at: (size x)@(size y * count + padding) with: ''.
		self buildImageMorph: #pickUpItem in: twoSymbols second at: 0@(size y * count).
		count := count + 1].
	self buildStringMorph: #score1 at: (size x)@(size y * count + padding - 5) with: ''.
	self buildStringMorph: #score2 at: (size x)@(size y * count + padding + 10) with: ''.
	self buildImageMorph: #score in: '' at: 0@(size y * count).
