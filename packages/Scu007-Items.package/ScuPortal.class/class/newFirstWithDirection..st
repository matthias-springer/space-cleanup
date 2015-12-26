instance creation
newFirstWithDirection: aDirectionSymbol
	^ self basicNew
		direction: aDirectionSymbol;
		initialize;
		yourself  