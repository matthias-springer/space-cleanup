instance creation
buildIn: aGame as: aVariation on: anItemSymbol do: aClosure
	^ (ScuPickUpItem newIn: aGame)
		variation: aVariation;
		draw;
		at: anItemSymbol put: aClosure;
		yourself