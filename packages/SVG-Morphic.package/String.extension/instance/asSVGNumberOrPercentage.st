*SVG-Morphic
asSVGNumberOrPercentage
	"If the receiver describes a percentage then
	answer the receiver as a number / 100."

	^(self withBlanksTrimmed endsWith: '%')
		ifTrue: [self asSVGNumber / 100]
		ifFalse: [self asSVGNumber]