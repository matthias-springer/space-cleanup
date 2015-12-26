actions
react: anItem
	(self reactions at: anItem itemSymbol ifAbsent: [[:item | ]]) value: anItem.
	self delete.