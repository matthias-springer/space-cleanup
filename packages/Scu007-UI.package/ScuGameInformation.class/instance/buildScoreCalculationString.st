accessing
buildScoreCalculationString
	^ '{1} - {2}' format: {
		self scorePoints. 
		(self game level time/3000 printShowingDecimalPlaces: 0). }