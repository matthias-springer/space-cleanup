render
formFor: aSymbol inVariation: aVariation
	aVariation
		ifNotNil: [^ self formFor: (aSymbol, aVariation) asSymbol]  
		ifNil: [^ self formFor: aSymbol].