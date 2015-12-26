accessing
keysRequiredPlayer: aPlayerName
	^ #(Left Right Up Down Place) collect: [:aCode | (aPlayerName, aCode) asSymbol]