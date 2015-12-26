updating
refreshStrings
	| bucket |
	bucket := self game mainPlayer bucketPrototype.
	(self strings at: #limit) contents: self game mainPlayer bucketsLeft asString.
	(self strings at: #portal) contents: self game mainPlayer portalsLeft asString.
	(self strings at: #damage) contents: bucket damage asString.
	(self strings at: #distance) contents: bucket distance asString.
	(self strings at: #health) contents: self game mainPlayer health asString.
	(self strings at: #timeout) contents: (bucket timeout * bucket stepTime / 1000 asFloat) asString, ' s'.
	(self strings at: #score1) contents: (self buildScoreCalculationString).
	(self strings at: #score2) contents: '= ', self score asString.
