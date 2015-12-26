events
checkOutType: aSymbol
	self items do: [:subitems | subitems itemSymbol = aSymbol 
		ifTrue: [self checkOut: subitems]].