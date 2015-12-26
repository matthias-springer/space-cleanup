events
searchFor: aSymbol do: aBlock
	self items do: [:subitem | 
		subitem itemSymbol = aSymbol ifTrue: [aBlock value: subitem]].