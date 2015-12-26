render
svgFromString: aString
	| doc |
	doc := XMLDOMParser parseDocumentFrom: aString readStream.
	^ (SVGMorph new createFromSVGDocument: doc)
		color: Color transparent;
		yourself