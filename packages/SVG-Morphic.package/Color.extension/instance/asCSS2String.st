*SVG-Morphic
asCSS2String
	"Answer a color string in CSS2 format."

	^'rgb(',
		(self red * 255) rounded asString, ', ',
		(self green * 255) rounded asString, ', ',
		(self blue * 255) rounded asString, ')'