accessing
needsBorderFix: aSymbol
	^ ((aSymbol startsWith: 'floor') | (aSymbol = #wall)) not