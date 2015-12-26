events
searchFor: aSymbol
	  ^ self items anySatisfy: [:subitem | subitem itemSymbol = aSymbol]
