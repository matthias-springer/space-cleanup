instance creation
newSecondWithDirection: aDirectionSymbol withFirst: aFirstPortal
	^ self basicNew
		direction: aDirectionSymbol;
		initialize;
		connectedPortal: aFirstPortal;
		yourself    
	