render
formFor: aSymbol
	| svgString svgMorph form |
	^ self cache at: aSymbol ifAbsentPut: [
		svgString := (self images at: aSymbol ifAbsent: [self images at: #default]) value.
		form := Form extent: self imageSize depth: 32.
		svgMorph := self svgFromString: svgString.
		svgMorph extent: self imageSize.
		svgMorph fullDrawOn: form getCanvas.
		(self needsBorderFix: aSymbol) ifTrue: [form border: form boundingBox width: 1 fillColor: Color transparent].
		form]